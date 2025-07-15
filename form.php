<?php

require_once 'Database.php';

// Traitement de la requête POST
// Récupération des données de la requête POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $message = '';

    try {
        $data = $_POST;

        $bdd = (new Database())->connect(); // Objet PDO (connexion à la base de données)

        /**
         * Création de la requête SQL
         * Ici nous créons une requête SQL afin d'insérer les
         * nouvelles données dans la table expositions de la BDD
         */
        $query = "INSERT INTO expositions (`title`, `date`, `description`, `city_id`) VALUES (:title, :date, :description, :city_id)";

        /**
         * Data binding avec les paramètres de la requête
         * On effectue un bindValue pour chaque paramètre de la requête
         * On nomme généralement ce genre d'opération un "statement"
         */
        $stmt = $bdd->prepare($query);
        $stmt->bindValue(':title', $data['Titre']);
        $stmt->bindValue(':date', $data['Date']);
        $stmt->bindValue(':description', $data['Description']);
        $stmt->bindValue(':city_id', intval($data['Ville']));

        // Exécution du statement et non de la query directement
        $exec = $stmt->execute();

        // Affichage d'un message en fonction de l'enregistrement en base de données
        $message = "L'exposition a bien été enregistrée";

    } catch (\Throwable $th) {
        $message = "Une erreur est survenue lors de l'enregistrement, merci de réessayer";
    }

    // Redirection vers l'accueil avec un message
    header('Location: /?message=' . $message);
}