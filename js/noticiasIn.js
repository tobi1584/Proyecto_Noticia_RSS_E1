// Ontengo los datos del localStorage
let datos = localStorage.getItem('datos');

// Según el id se pondrá una cosa u otra
datos = JSON.parse(datos.split(";")[parseInt(document.querySelector('main').id)]);

// Escribo el "html" personalizado
let html = `
    <section class="noticia">
        <img id="imgNoticia" src="${datos.imagen}"/>
        <h2>${datos.titulo}</h2>
        <div class="cuerpo">
        <h4>${datos.categoria}</h4>
        <h6>${datos.autor}, ${datos.fecha}</h6>
        <p>${datos.descripcion}</p>
        <br/>
        <p>${datos.contenido}</p>
        </div>
    </section>
    `;


// Inserto el contenido HTML generado en el "main"
document.querySelector('main').innerHTML = html