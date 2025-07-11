<?php
$message = $_GET['message'] ?? '';

function connect(): PDO
{
    // Connexion à la base de données
        $host = 'localhost';
        $port = '3306';
        $dbname = 'expo';
        $user = 'root';
        $password = 'root';

        $connexion = new PDO(
            "mysql:host=$host;port=$port;dbname=$dbname", //URL de connexion
            $user, // utilisateur dans la base de données
            $password, // selon configuration
        [
        /**
         * Mode d'erreur
         * Il s'agit d'une exception si le mode d'erreur est ERRMODE_EXCEPTION
         * cela permet d'éviter les erreurs de connexion et d'afficher le message d'erreur
         */
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,

        /**
         * Config de récupération des données
         * FETCH, c'est la récuperation des données en ligne
         * ASSOC ...
         */
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]
        );
    return $connexion;
}


// Traitement de la requête POST

    // Récupération ses données de la requête POST
if ($_SERVER["REQUEST_METHOD"] === 'POST'){
    $data = $_POST;
    
    $bdd = connect(); // Objet PDO (connexion à la base de données)
    /**
     * Création de la requête SQL
     * Ici ns créons une requête SQL afin d'insérer les nouvelles données dans la table expositions de la BDD
     */
    $query = "INSERT INTO expositions (`title`, `date`, `description`) VALUES ('" . $data['Titre'] . "','" . $data['Date'] . "','" . $data['Description'] . "')";

    // Exécution de la requête SQL
    $exec = $bdd->query($query)->execute();

    // Affichage d'un message en fonction de l'enregistrement en base de données
    $message = "L'exposition a bien été enregistrés";

    header('Location: /?message=' . $message);
    // Traitement des données pour la requête SQL


    // Création de la requête SQL

    // Exécution de la requête SQL

    // Affichage d'un message en fonction de l'enregistrement en base de données

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter des expositions</title>
    <script src="https://cdn.tailwindcss.com/"></script>
</head>
<body>
    
    <main class="container mx-auto">
        <div class="grid place-items-center h-screen">
            <h1 class="text-3xl font-bold">Ajouter une exposition</h1>
            <p class="text-sm text-slate-800"> <?= $message ?? '' ?></p>
            <form action="/" method="post">
                <label for="Titre" class="relative">
                    <span class="text-sm font-medium text-gray-700"> Titre </span>
                    <input
                        type="text"
                        id="Titre"
                        name="Titre"
                        value="L'exposition du futur"
                        class="peer mt-0.5 w-full rounded border p-2 shadow sm:text-sm" 
                        required />
                </label>
                <label for="Date">
                    <span class="text-sm font-medium text-gray-700"> Date </span>
                    <input
                        type="date"
                        id="Date"
                        name="Date"
                        value="2025-07-14"
                        class="mt-0.5 w-full rounded border p-2 shadow sm:text-sm" 
                        required />
                </label>
                <div>
                    <label for="Description">
                        <span class="text-sm font-medium text-gray-700"> Description </span>
                        <textarea
                            id="Description"
                            name="Description"
                            class="mt-0.5 w-full resize-none rounded border shadow sm:text-sm"
                            rows="4"
                            required > Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio, non. </textarea>
                    </label>

                    <div class="mt-1.5 flex items-center justify-end gap-2">
                        <button
                            type="submit"
                            class="rounded border border-transparent px-3 py-1.5 text-sm font-medium text-gray-700 transition-colors hover:text-gray-900">
                            Effacer
                        </button>

                        <button
                            type="submit"
                            class="rounded border border px-3 py-1.5 text-sm font-medium text-gray-900 shadow transition-colors hover:bg-gray-100">
                            Enregistrer
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </main>
</body>
</html>

