// Nettoyer le formulaire
let form = document.querySelector('form');
let btnEffacer = document.querySelector('#effacer');

btnEffacer.addEventListener('click', function () {
    form.reset();
});


// Afficher les informations de l'exposition
let expoList = document.querySelectorAll("[data-expo-id]");

expoList.forEach(expo => {
    expo.addEventListener('click', function() {
        document.querySelector('#expo-detail').classList.remove('hidden');
        expo.classList.toggle('bg-violet-900');
        expo.classList.toggle('text-white');
        document.querySelector("#expo-description")
            .textContent = expo.getElementsByTagName('span')[1].textContent ?? 'Aucune description';
        document.querySelector("#expo-detail").classList.remove('hidden');
    })
});
// console.log(expoList);

// Fetch ElevenLabs pour un Text-to-Speech
const btnSpeech = document.querySelector('#expo-play'); // Récup du boutton

btnSpeech.addEventListener('click', function() { //écouteur d'event
    const text = document.querySelector('#expo-description').textContent; //Text pour audio
    try { //fetch vers elevenLabs
        fetch('', {

        })
    } catch (error) {

    }
});