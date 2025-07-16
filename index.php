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
    <script src="assets/main.js" defer></script>
</head>

<body>
    <main class="grid grid-cols-4 gap-4 h-screen m-4">
        <div class="col-span-1 shadow rounded-2xl p-4 rich-black flex flex-col justify-between">
            <?php include 'components/nav.html.php'; ?>
            <?php include 'components/detail.html.php'; ?>

        </div>
        <div class="col-span-3">
            <div class="expo-title h-48 mb-4 rounded-2xl p-4 shadow flex flex-col justify-center items-center">
                <h1 class="text-7xl font-bold">Ravis de vous revoir</h1>
                <p class="">Nous sommes le <?= date('d/m/Y') ?></p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="expo-count col-span-1 h-64 rounded-2xl">
                    <div class="bg-gradient-to-br from-transparent to-violet-900 rounded-2xl p-4 text-white text-center h-full w-full flex flex-col justify-center items-center hover:bg-violet-800 transition-all duration-300 ease-in-out">
                        <h4 class="text-4xl text-slate-50 font-bold">Expositions</h4>
                        <p class="text-7xl font-bold">
                            <?= Database::count('expositions') ?>
                        </p>
                    </div>
                </div>
                <div class="expo-city col-span-1 h-64 rounded-2xl">
                    <div class="bg-gradient-to-br from-transparent to-green-900 rounded-2xl p-4 text-white text-center h-full w-full flex flex-col justify-center items-center hover:bg-green-800 transition-all duration-300 ease-in-out">
                        <h4 class="text-4xl text-slate-50 font-bold">Villes</h4>
                        <p class="text-7xl font-bold">
                            <?= Database::count('city') ?>
                        </p>
                    </div>
                </div>
                <div class="col-span-1 bg-white shadow p-4 rounded-xl h-[450px]">
                    <ul class="overflow-y-scroll h-full">
                        <?php foreach (Database::getAll('expositions') as $exposition): ?>
                            <li class="my-2 p-2 text-base hover:bg-slate-100 transition-all duration-300 ease-in-out cursor-pointer" data-expo-id="<?= $exposition['id'] ?>">
                                <span class="font-semibold"><?= $exposition['title'] . '</span> le ' . date('d/m/Y', strtotime($exposition['date'])) ?>
                                <span class="hidden"><?= $exposition['description'] ?></span>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="col-span-1 bg-white shadow p-4 rounded-xl h-[450px]">
                    <?php include 'components/form.html.php'; ?>
                </div>
            </div>
        </div>
    </main>
</body>

</html>