var num = document.getElementById("num");
var boton = document.getElementById("boton");
var resultado = document.getElementById("resultado");
var arreglo = document.getElementById("array");
boton.addEventListener("click", buscar);

var numeros = [];

var usuario = prompt("cuantas pociciones tendra el arreglo");
var poc = parseInt(usuario);

for (var i = 0; i < poc-1 ; i++) {
  numeros[i]=Math.round(Math.random()*99);
}

for (var i = 0; i < poc-1 ; i++) {
  arreglo.innerHTML += numeros[i]+" , ";
}

function buscar()
{
  var encontrado=false;
  var n = parseInt(num.value);

  for (var i = 0; i <= poc-1 ; i++)
  {
    if (n == numeros[i])
    {
      resultado.innerHTML = "Numero encontrado";
      encontrado=true;
      break;
    }
  }
  if (encontrado==false) {
    resultado.innerHTML = "El numero no existe";
  }
}
