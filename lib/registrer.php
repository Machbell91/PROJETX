<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Include database connection file
include_once 'db_connection.php';

// Get the data from the POST request
$data = json_decode(file_get_contents("php://input"));

// Check if the required fields are present
if (isset($data->nom) && isset($data->email) && isset($data->mot_de_passe)) {
    // Prepare the INSERT statement
    $stmt = $conn->prepare("INSERT INTO utilisateurs (nom, email, mot_de_passe) VALUES (?, ?, ?)");

    // Bind the parameters
    $stmt->bind_param("sss", $nom, $email, $mot_de_passe);

    // Set the parameters
    $nom = $data->nom;
    $email = $data->email;
    $mot_de_passe = password_hash($data->mot_de_passe, PASSWORD_DEFAULT);

    // Execute the statement
    if ($stmt->execute()) {
        // User was registered successfully
        http_response_code(200);
        echo json_encode(array("message" => "Utilisateur enregistré avec succès."));
    } else {
        // Failed to register user
        http_response_code(500);
        echo json_encode(array("message" => "Échec de l'enregistrement de l'utilisateur."));
    }

    // Close the statement
    $stmt->close();
} else {
    // Required fields are missing
    http_response_code(400);
    echo json_encode(array("message" => "Champs requis manquants."));
}

// Close the database connection
$conn->close();
?>
