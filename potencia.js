var num = document.getElementById("numero");
var resultado = document.getElementById("resultado");

var boton = document.getElementById("calcular");

boton.addEventListener("click", PotenciaCercana);

function PotenciaCercana()
{
  var n = parseInt(num.value);
  var r2 = 0;
  var pc = 0;
 // console.log(n);

    for (var i = 0; i <= 100 ; i++) {
      r2 = Math.pow(2, i);
     
      /*if (n < r2)
        {
          pc=r2/2;
          console.log(pc);
          resultado.innerHTML = "La potencia mas cercana es: "+pc;
          break;
        }*/

      if(n <= r2)
      {
         console.log(r2);
        console.log("entra");
        if (n == r2)
        {
          resultado.innerHTML = "El numero "+n+" es potencia de 2";  
        }
        else if (n < r2)
        {
          pc=r2/2;
          console.log(pc);
          resultado.innerHTML = "La potencia mas cercana es: "+pc;
        }
        break;
      }
    }
}
