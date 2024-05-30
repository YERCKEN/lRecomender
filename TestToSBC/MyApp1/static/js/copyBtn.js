document.getElementById('copyButton1').addEventListener('click', function() {
    const text = document.getElementById('modeloPC1').textContent;
    navigator.clipboard.writeText(text).then(() => {
        console.log('texto copiado');
    }).catch(err => {
        console.error('Error al copiar el texto: ', err);
    });
});

document.getElementById('copyButton2').addEventListener('click', function() {
    const text = document.getElementById('modeloPC2').textContent;
    navigator.clipboard.writeText(text).then(() => {
        console.log('texto copiado');
    }).catch(err => {
        console.error('Error al copiar el texto: ', err);
    });
});

document.getElementById('copyButton3').addEventListener('click', function() {
    const text = document.getElementById('modeloPC3').textContent;
    navigator.clipboard.writeText(text).then(() => {
        console.log('texto copiado');
    }).catch(err => {
        console.error('Error al copiar el texto: ', err);
    });
});