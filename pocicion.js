var num = document.getElementById("num");
var boton = document.getElementById("boton");
var resultado = document.getElementById("resultado");

boton.addEventListener("click", buscarPosicion);

var numeros = [];
numeros[0]=1;
numeros[1]=2;
numeros[2]=9;
numeros[3]=8;
numeros[4]=3;

function buscarPosicion()
{
  var encontrado=false;
  var n = parseInt(num.value);

  for (var i = 0; i <=4 ; i++)
  {
    if (n == numeros[i])
    {
      resultado.innerHTML = "el numero "+n+" esta en la posicion: "+i;
      encontrado=true;
      break;
    }
  }
  if (encontrado==false) {
    resultado.innerHTML = "el numero no ha sido encontrado";
  }
}
