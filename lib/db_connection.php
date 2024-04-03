<?php
// Activer l'affichage des erreurs PHP
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Définir les constantes de connexion à la base de données
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'DBOP');

// Démarrer le tampon de sortie
ob_start();

// Connexion à la base de données
$conn = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Échec de la connexion à la base de données : " . $conn->connect_error);
} else {
    echo "Connexion à la base de données réussie\n";
}

// Effectuer des tests
echo "Ceci est un test d'echo\n";
var_dump($conn);
ob_flush(); // Envoyer les données tamponnées au navigateur

// Fermer la connexion
$conn->close();
?>