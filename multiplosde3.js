var num1 = document.getElementById("num1");
var num2 = document.getElementById("num2");

var boton = document.getElementById("boton");

boton.addEventListener("click", generarMultiplos);

function generarMultiplos()
{
  var n1 = parseInt(num1.value);
  var n2 = parseInt(num2.value);
  var c = 0;

  if (n1 >= 0 && n2 >=0) {
    if (n1 < n2)
    {
      while (n1 <= n2)
      {
        if (n1 % 3 == 0)
        {
          c=c+1;
        }
        n1=n1+1;
        resultado.innerHTML = c+" :multiplos de 3";
      }
    }
     else
     {
      while (n2 <= n1)
      {
        if (n2 % 3 == 0)
        {
          c=c+1;
        }
        n2=n2+1;
        resultado.innerHTML = c+" :multiplos de 3";
      }
    }
  } else {
    alert("Los numero deben de ser positivos");
  }
}
var resultado = document.getElementById("resultado");
