function mostrarEntorno(nivel) {

    document.getElementById('preguntas').style.display = 'none';
    document.getElementById('preguntas').style.display = 'none';

    if (nivel === 'basico') {

        document.getElementById('noExperto').style.display = 'block';
        document.getElementById('Experto').style.display = 'block';
        document.getElementById('recomendadoNoExperto').style.display = 'block';
    }
    else if (nivel === 'intermedio'){

        document.getElementById('noExperto').style.display = 'block';
        document.getElementById('Experto').style.display = 'block';

        document.getElementById('recomendadoNoExperto').style.display = 'block';
        document.getElementById('recomendadoExperto').style.display = 'block';



    } else if (nivel === 'experto') {

        document.getElementById('Experto').style.display = 'block';
        document.getElementById('noExperto').style.display = 'block';

        document.getElementById('recomendadoExperto').style.display = 'block';
    }

}