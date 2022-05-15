function menu (){
    let menu = document.getElementById("hola");
    let boton1= document.getElementById("boton1");
    let boton2 = document.getElementById("boton2");
    menu.style.display=""; 
    boton1.style.display="none";
    boton2.style.display="";
   }
   function menucerrar(){
       let boton2 = document.getElementById("boton2")
       let boton1 = document.getElementById("boton1")
       let menu = document.getElementById("hola");
       boton2.style.display="none";
       boton1.style.display="";
       menu.style.display="none";
   }