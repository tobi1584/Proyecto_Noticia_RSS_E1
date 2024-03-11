const formulario = document.getElementById('formulario');
const botonGuardar = document.getElementById('guardar');
const botonLimpiar = document.getElementById('limpiar');
let datos = localStorage.getItem('datos');

botonGuardar.addEventListener('click', guardado);
botonLimpiar.addEventListener('click', limpiar);

function guardado(event) {
    event.preventDefault(); // Prevent default form submission behavior

    const formData = {};
    const inputs = formulario.querySelectorAll('input, textarea');
    inputs.forEach(input => {
        formData[input.id] = input.value;
    });

    const jsonData = JSON.stringify(formData);

    if (datos === 'null') {
        localStorage.setItem('datos', jsonData);
    } else {
        localStorage.setItem('datos', jsonData + ";" + datos);
    }

    inputs.forEach(input => {
        input.value = '';
    });
}

function limpiar() {
    localStorage.setItem('datos', 'null');
    datos = localStorage.getItem('datos');
}