# road-to-sql

Dans un but de conservé à long terme des données, nous devons faire de la `persistance`.

C'est le terme qui représente le fait de conserver les données en mémoire, en stockant les données dans un fichier ou dans une base de données§

Ici nous utilisons SQL avec MariaDB, voici les toutes premières lignes dans ce langage :

```sql
CREATE DATABASE expo;
    DEFAULT CHARACTER SET utf8mb4;
```
Permet de créer une base de données nommée `expo`.
La seconde kigne permet de définir le jeu de caractères par défaut de la base de données.

`utf8` c'est ma prise en charge de l'encodage des caractères
`mb4` fait référence au multi-byte.

---

```sql
DROP DATABASE expo;
```
Permet de supprimer la base de données `expo`.

---

```sql
CREATE TABLE expositions (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(80) NOT NULL,
    description VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (id)
);
```

Permet de créer une table nommée `expositions` avec les champs suivants:

- `id` : identifiant unique de la table,
- `title` : titre de l'exposition,
- `description` : description de l'exposition
- `date` : date de l'exposition,
- `PRIMARY KEY (id)` : clé primaire de la table

---

```sql
INSERT INTO expositions (`title`, `date`, `description`) VALUES ('Harry Potter','2020-07-14','Versaille')";
```

Permet d'insérer une ligne dans la table `expositions` avec les valeur suivants:
- `title` : Harry Potter,
- `date` : 2020-07-14,
- `description` : Versaille,

---

```sql
UPDATE expositions SET title = 'Nouvelle HP' WHERE id=1;
```

Permet de mettre à jour la valeur de la colonne `title` de la ligne avec l'identifiant `1` dans la table `expositions` avec la valeur `Nouvelle HP`

---

```sql
DELETE FROM expositions WHERE id=5;
```

Permet de supprimer la ligne avec l'identifiant la table `expositions` avec les valeur suivants:

---

```sql
SELECT * FROM expositions LIMIT 10 ORDER BY id DESC;
```

Permet de récupérer toutes les lignes de la table expositions, de limiter le nombre de résultats à 10 et de trier les résultats par ordre décroissant de l'identifiant.

---

```sql
SELECT title FROM expositions WHERE id = 1;
```

Permet de récupérer le titre de la ligne avec l'identifiant `1` de la table `expositions`.
