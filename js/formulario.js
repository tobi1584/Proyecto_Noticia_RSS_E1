const formulario = document.getElementById('formulario');
const botonGuardar = document.getElementById('guardar');
const botonLimpiar = document.getElementById('limpiar');
const datos = localStorage.getItem('datos');
botonGuardar.addEventListener('click', guardado);
botonLimpiar.addEventListener('click', limpiar);
function guardado() {
    if (datos === 'null') {
        localStorage.setItem('datos',  JSON.stringify(Object.fromEntries(new FormData(formulario))));
    } else {
        localStorage.setItem('datos',  JSON.stringify(Object.fromEntries(new FormData(formulario))) + ";" + datos);
    }
}
function limpiar() {
    localStorage.setItem('datos', 'null')
}