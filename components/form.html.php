<h4 class="text-center mb-4 font-semibold">
    Ajouter une exposition à la liste
</h4>
<form action="/form.php" method="post">
    <label for="Titre" class="relative">
        <span class="text-sm font-medium text-gray-700"> Titre </span>
        <input
            type="text"
            id="Titre"
            name="Titre"
            class="peer mt-0.5 w-full rounded border p-2 shadow sm:text-sm" required />
    </label>
    <label for="Date">
        <span class="text-sm font-medium text-gray-700"> Date </span>
        <input
            type="date"
            id="Date"
            name="Date"
            class="mt-0.5 w-full rounded border p-2 shadow sm:text-sm" required />
    </label>
    <label for="Ville">
        <span class="text-sm font-medium text-gray-700"> Ville </span>
        <select name="Ville" id="Ville" class="mt-0.5 w-full rounded border p-2 shadow sm:text-sm" required>
            <?php foreach (Database::getAll('city') as $city): ?>
                <option value="<?= $city['id'] ?>"><?= $city['name'] ?></option>
            <?php endforeach; ?>
        </select>
    </label>
    <div>
        <label for="Description">
            <span class="text-sm font-medium text-gray-700"> Description </span>
            <textarea
                id="Description"
                name="Description"
                class="mt-0.5 p-2 w-full resize-none rounded border shadow sm:text-sm"
                rows="4" required></textarea>
        </label>

        <div class="mt-1.5 flex items-center justify-end gap-2">
            <button
                id="effacer"
                type="button"
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