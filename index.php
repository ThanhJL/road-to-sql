<?php require_once 'Database.php'; ?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter des expositions</title>
    <link rel="stylesheet" href="assets/style.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>

<body>
    <main class="grid grid-cols-4 gap-4 h-screen m-4">
        <div class="col-span-1 shadow rounded-2xl p-4 rich-black">
            NAV
        </div>
        <div class="col-span-3 shadow rounded-2xl p-4">
            <div class="h-64 mb-4 rounded-2xl p-4 shadow flex flex-col justify-center items-center" style="background-image: url('./assets/images/hello.jpg'); background-position: bottom; background-size: cover;">
                <h1 class="text-7xl font-bold">Ravis de vous revoir</h1>
                <p class="">Nous sommes le <?= date('d/m/Y') ?></p>
            </div>
            <div class="grid grid-cols-2 gap-4">
                <div class="col-span-1 h-64 rounded-2xl" style="background-image: url('./assets/images/expos.jpg');">
                    <div class="bg-gradient-to-br from-transparent to-violet-900 rounded-2xl p-4 text-white text-center h-full w-full flex flex-col justify-center items-center hover:bg-violet-800 transition-all duration-300 ease-in-out">
                        <h4 class="text-4xl text-slate-50 font-bold">Expositions</h4>
                        <p class="text-7xl font-bold">
                            <?= count(Database::getAll('expositions')) ?>
                        </p>
                    </div>
                </div>
                <div class="col-span-1 h-64 rounded-2xl" style="background-image: url('./assets/images/villes.jpg'); background-position: center;">
                    <div class="bg-gradient-to-br from-transparent to-green-900 rounded-2xl p-4 text-white text-center h-full w-full flex flex-col justify-center items-center hover:bg-green-800 transition-all duration-300 ease-in-out">
                        <h4 class="text-4xl text-slate-50 font-bold">Villes</h4>
                        <p class="text-7xl font-bold">
                            <?= count(Database::getAll('city')) ?>
                        </p>
                    </div>
                </div>
                <div class="col-span-1">
                    <ul class="">
                        <?php foreach (Database::getAll('expositions', 5) as $exposition): ?>
                            <li class="my-2 text-xl">
                                <?= $exposition['title'] . ' le ' . $exposition['date'] ?>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="col-span-1">
                    <?php include 'components/form.html.php'; ?>
                </div>
            </div>
        </div>
    </main>
</body>

</html>