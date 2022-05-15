let GuardarAnswers = () => {

    const name = document.getElementById('name');
    const email = document.getElementById('email');
    const tlphone = document.getElementById('tlphone');
    const message = document.getElementById('message');
    const select = document.getElementById('select1');

    let data =
        '\r Nombre: ' + name.value + ' \r\n ' +
        'Email: ' + email.value + ' \r\n ' +
        'Telefono: ' + tlphone.value + ' \r\n ' +
        'Mensaje: ' + message.value + ' \r\n ' +
        'Asunto: ' + select.value;

    const textToBLOB = new Blob([data], {
        type: 'text/plain'
    });
    const Archivo = 'DatosDelFormulario.txt'; // The file to save the data.

    let newLink = document.createElement("a");
    newLink.download = Archivo;

    if (window.webkitURL != null) {
        newLink.href = window.webkitURL.createObjectURL(textToBLOB);
    } else {
        newLink.href = window.URL.createObjectURL(textToBLOB);
        newLink.style.display = "none";
        document.body.appendChild(newLink);
    }

    newLink.click();
}