document.addEventListener('DOMContentLoaded', function() {
    const resumenSeccion = document.querySelector('.pSoftwares');
    const hardwareItems = document.querySelectorAll('[id^="softwareItem"]');

    hardwareItems.forEach(function(item) {
        item.addEventListener('click', function() {
            var checkbox = item.querySelector('.softwareCheckbox');
            checkbox.checked = !checkbox.checked;

            const softwareName = checkbox.nextSibling.textContent.trim();

            if (checkbox.checked) {
                // Añadir el párrafo correspondiente si está marcado
                if (!document.querySelector(`.pSoftwares p[data-software="${softwareName}"]`)) {
                    const p = document.createElement('p');
                    p.textContent = softwareName;
                    p.setAttribute('data-software', softwareName);
                    resumenSeccion.appendChild(p);
                }
                item.classList.add('divSfSeleccionada');
            } else {
                // Eliminar el párrafo correspondiente si está desmarcado
                const p = document.querySelector(`.pSoftwares p[data-software="${softwareName}"]`);
                if (p) {
                    resumenSeccion.removeChild(p);
                }
                item.classList.remove('divSfSeleccionada');
            }

            const selectedSoftware = Array.from(document.querySelectorAll('.softwareCheckbox:checked'))
                                        .map(checkbox => checkbox.nextSibling.textContent.trim());
            console.log("SELECCIONADOS");
            console.log(selectedSoftware);
        });
    });
});


function filterSoftware() {
    var input, filter, softwareList, hardwareItems, label, i, txtValue;
    input = document.getElementById('searchInput');
    filter = input.value.toUpperCase();
    softwareList = document.getElementsByClassName('softwareList')[0];
    hardwareItems = softwareList.getElementsByClassName('hardwareItem');

    for (i = 0; i < hardwareItems.length; i++) {
        label = hardwareItems[i].getElementsByTagName("label")[0];
        txtValue = label.textContent || label.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            hardwareItems[i].style.display = "";
        } else {
            hardwareItems[i].style.display = "none";
        }
    }
}

















/*document.addEventListener('DOMContentLoaded', function() {

    // Seleccionar todos los botones de la clase 'hardwareItem' dentro de la clase 'softwareList'
    const buttonSoftware = document.querySelectorAll('.softwareList .hardwareItem');
    const resumenSeccion = document.querySelector('.pSoftwares');

    // FUNCIÓN SOFTWARE
    buttonSoftware.forEach(button => {
        button.addEventListener('click', function() {
            const softwareName = this.textContent.trim();

            // Si el botón ya tiene la clase 'selected', la eliminamos
            if (this.classList.contains('selected')) {
                this.classList.remove('selected');

                // Eliminar el párrafo correspondiente en la sección de resumen
                const p = document.querySelector(`.seccionResumen p[data-software="${softwareName}"]`);
                if (p) {
                    resumenSeccion.removeChild(p);
                }
            } else {
                // Añadir la clase 'selected' al botón clicado
                this.classList.add('selected');

                // Crear un nuevo párrafo con el nombre del software y añadirlo a la sección de resumen
                const p = document.createElement('p');
                p.textContent = softwareName;
                p.setAttribute('data-software', softwareName);
                resumenSeccion.appendChild(p);
            }

            // Imprimir los valores seleccionados en la consola
            const selectedSoftware = Array.from(document.querySelectorAll('.softwareList .hardwareItem.selected'))
                                        .map(btn => btn.textContent.trim());
            console.log("SELECCIONADOS");
            console.log(selectedSoftware);
        });
    });
});*/