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


