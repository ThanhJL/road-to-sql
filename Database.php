<?php
 /**
  * Classe représentant da connexion
    * à la base de données du projet
  */
class Database
{
    private string $host;
    private string $port;
    private string $dbname;
    private string $user;
    private string $password;

    public function __construct()
    {
        $this->host = 'localhost';
        $this->port = '3306';
        $this->dbname = 'expo';
        $this->user = 'root';
        $this->password = 'root';
    }

    public function connect(): PDO
    {
    // Connexion à la base de données
        
        $connexion = new PDO(
            "mysql:host=". $this->host . ";port=" . $this->port . ";dbname=" . $this->dbname, //URL de connexion
            $this->user, // utilisateur dans la base de données
            $this->password, // selon configuration
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

    /**
     * Méthode (fonction) pour récupérér toutes les données d'une table spécifique
     * @@return array
     */
    static public function getAll(?string $table, ?int $limit = null): array
    {
        $db = new Database();
        $query = "SELECT * FROM $table";
        if($limit !== null) { // Si la limite est définie
            $query .= " LIMIT $limit"; // Ajout de la limite (.= c'est "apprend")
        }

        return $db->connect()->query($query)->fetchAll();
    }
}