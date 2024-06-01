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

    // Mostrar los elementos con los IDs específicos si el input está vacío
    if (filter === "") {
        var hiddenElements = document.querySelectorAll("#Ofimática, #dev, #diseño, #NavegadoresW, #juegos, #virt, #otros");
        hiddenElements.forEach(function(element) {
            element.style.display = "";
        });
    } else {
        var hiddenElements = document.querySelectorAll("#Ofimática, #dev, #diseño, #NavegadoresW, #juegos, #virt, #otros");
        hiddenElements.forEach(function(element) {
            element.style.display = "none";
        });
    }
}
