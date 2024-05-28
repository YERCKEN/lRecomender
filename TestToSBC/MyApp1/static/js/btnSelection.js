document.addEventListener('DOMContentLoaded', function() {

    //VARIABLES CPU = = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

    // Seleccionar todos los botones de la clase 'hardwareItem' dentro de la clase 'cpuModel'
    const buttonsCPU = document.querySelectorAll('.cpuModel .hardwareItem');
    // Seleccionar el párrafo y el input oculto [cpuInput]
    const cpuText = document.getElementById('pcpu');
    const cpuInput = document.getElementById('cpuInput');

    //VARIABLES RAM  = = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

     // Seleccionar todos los botones de la clase 'hardwareItem' dentro de la clase 'ramAmount'
     const buttonsRAM = document.querySelectorAll('.ramAmount .hardwareItem');
     // Seleccionar el párrafo y el input oculto [ramInput]
     const ramText = document.getElementById('pRam');
     const ramInput = document.getElementById('ramInput');

    //VARIABLES DISK = = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

     // Seleccionar todos los botones de la clase 'hardwareItem' dentro de la clase 'ramAmount'
     const buttonsDISK = document.querySelectorAll('.diskAmount .hardwareItem');
     // Seleccionar el párrafo y el input oculto [ramInput]
     const diskText = document.getElementById('pDisk');
     const diskInput = document.getElementById('diskInput');


    //FUNCIÓN CPU= = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

    buttonsCPU.forEach(button => {
        button.addEventListener('click', function() {
            // Remover la clase 'selected' de todos los botones
            buttonsCPU.forEach(btn => btn.classList.remove('selected'));
            
            // Añadir la clase 'selected' al botón clicado
            this.classList.add('selected');
            
            // Actualizar el texto del párrafo y el valor del input oculto
            const selectedCpu = this.textContent.trim();
            cpuText.textContent = selectedCpu;
            cpuInput.value = selectedCpu;

            // Imprimir el valor del input oculto en la consola
            console.log("CPU");
            console.log(cpuInput.value);
        });
    });


    //FUNCIÓN RAM= = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

    buttonsRAM.forEach(button => {
        button.addEventListener('click', function() {
            // Remover la clase 'selected' de todos los botones
            buttonsRAM.forEach(btn => btn.classList.remove('selected'));
            
            // Añadir la clase 'selected' al botón clicado
            this.classList.add('selected');

            // Actualizar el texto del párrafo y el valor del input oculto
            const selectedRam = this.textContent.trim();
            ramText.textContent = selectedRam;
            ramInput.value = selectedRam;

            // Imprimir el valor del input oculto en la consola
            console.log("RAM");
            console.log(ramInput.value);
      
        });
    });

     //FUNCIÓN RAM= = = = = ====== = = == = = = = = = === = = = = = = = = = = = == = = === =====

     buttonsDISK.forEach(button => {
        button.addEventListener('click', function() {
            // Remover la clase 'selected' de todos los botones
            buttonsDISK.forEach(btn => btn.classList.remove('selected'));
            
            // Añadir la clase 'selected' al botón clicado
            this.classList.add('selected');

            // Actualizar el texto del párrafo y el valor del input oculto
            const selectedDisk = this.textContent.trim();
            diskText.textContent = selectedDisk;
            diskInput.value = selectedDisk;

            // Imprimir el valor del input oculto en la consola
            console.log("DISK");
            console.log(diskInput.value);
      
        });
    });





});