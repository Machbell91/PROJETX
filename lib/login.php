<?php
session_start();

// Définir les variables de connexion à la base de données
$db_host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "ma_base_de_donnees";

// Connexion à la base de données
$pdo = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_password);

// Traitement du formulaire de connexion
if (isset($_POST['login'])) {
  // Récupérer les données du formulaire
  $email = $_POST['email'];
  $password = $_POST['password'];

  // Préparation de la requête SQL
  $stmt = $pdo->prepare("SELECT * FROM utilisateurs WHERE email = ?");

  // Exécution de la requête avec le paramètre sécurisé
  $stmt->execute([$email]);

  // Récupération de l'utilisateur
  $utilisateur = $stmt->fetch();

  // Vérification que l'utilisateur existe
  if ($utilisateur) {
    // Vérification du mot de passe
    if (password_verify($password, $utilisateur['mot_de_passe'])) {
      // Authentification réussie
      $_SESSION['utilisateur_id'] = $utilisateur['id'];
      $_SESSION['utilisateur_nom'] = $utilisateur['nom'];
      header("Location: index.php");
    } else {
      // Mot de passe incorrect
      echo "Échec de l'authentification";
    }
  } else {
    // L'utilisateur n'existe pas
    echo "Échec de l'authentification";
  }
}

?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
</head>
<body>
  <h1>Formulaire de connexion</h1>
  <form action="login.php" method="post">
    <label for="email">Email</label>
    <input type="email" name="email" id="email">
    <br>
    <label for="password">Mot de passe</label>
    <input type="password" name="password" id="password">
    <br>
    <input type="submit" name="login" value="Se connecter">
  </form>
</body>
</html>
