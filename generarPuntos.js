	var textox1 = document.getElementById("x1");
	var textoy1 = document.getElementById("y1");
	var textox2 = document.getElementById("x2");
	var textoy2 = document.getElementById("y2");
	var textox3 = document.getElementById("x3");
	var textoy3 = document.getElementById("y3");

	var boton1 = document.getElementById("boton1");
	var boton2 = document.getElementById("boton2");
	var boton3 = document.getElementById("boton3");

	var cercano = document.getElementById("masCerca");

	var borrar = document.getElementById("limpiar");

	var resultado = document.getElementById("resultado");

	//boton1.addEventListener("click", primerPunto);
	//boton2.addEventListener("click", segundoPunto);
	//boton3.addEventListener("click", tercerPunto);

	cercano.addEventListener("click", CalcularPunto);

	borrar.addEventListener("click", limpiarCanvas);

	var canvas = document.getElementById("plano");
	var ctx = canvas.getContext("2d");

	var colorcito = "#fff";

	dibujarlinea(colorcito,300,600,300,0);
	dibujarlinea(colorcito,600,300,0,300);

	function dibujarlinea(color, xinicial, yinicial, xfinal, yfinal)
	{
		ctx.beginPath();
		ctx.strokeStyle = color;
		ctx.moveTo(xinicial, yinicial);
		ctx.lineTo(xfinal, yfinal);
		ctx.stroke();
		ctx.closePath();
	}

	function CalcularPunto()
	{
		var x1 = parseInt(textox1.value);
		var y1 = parseInt(textoy1.value);

		var x2 = parseInt(textox2.value);
		var y2 = parseInt(textoy2.value);

		var x3 = parseInt(textox3.value);
		var y3 = parseInt(textoy3.value);

		if (x1 >=0 && x1 <=599 && y1 >=0 && y1 <=599 && x2 >=0 && x2 <=599 && y2 >=0 && y2 <=599 && x3 >=0 && x3 <=599 && y3 >=0 && y3 <=599)
		{
			ctx.beginPath();
		 	ctx.fillStyle = "#F100FD";
		 	ctx.arc(x1,y1,3,0,2*Math.PI);
		 	ctx.fill();
		 	ctx.closePath();

			ctx.beginPath();
			ctx.fillStyle = "#FD2D00";
			ctx.arc(x2,y2,3,0,2*Math.PI);
			ctx.fill();
			ctx.closePath();

			ctx.beginPath();
			ctx.fillStyle = "#F1FD00";
			ctx.arc(x3,y3,3,0,2*Math.PI);
			ctx.fill();
			ctx.closePath();

			var d1 = 0;
			var d2 = 0;
			var d3 = 0;

			//distancia entre p1 y p2
			d1 = Math.sqrt((Math.pow((x2-x1),2)) + (Math.pow((y2-y1),2)));
			//distancia entre p2 y p3
			d2 = Math.sqrt((Math.pow((x2-x3),2)) + (Math.pow((y2-y3),2)));
			//distancia entre p1 y p3
			d3 = Math.sqrt((Math.pow((x3-x1),2)) + (Math.pow((y3-y1),2)));

			if (d1 < d2 && d1 < d3)
			{
				resultado.innerHTML = "Los puntos mas cercanos son: P1 y P2";
			}
			else if (d2 < d3 && d2 < d1)
			{
				resultado.innerHTML = "Los puntos mas cercanos son: P2 y P3";
			}
			else if (d3 < d2 && d3 < d1)
			{
				resultado.innerHTML = "Los puntos mas cercanos son: P3 y P1";
			}
			else
			{
				resultado.innerHTML = "No hay más próximo";
			}
		}
		 else
		 {
			 alert("Los numeros dados en la pocisiones x o y deben ser mayores a 0 y menores que 600");
		}
	}

	function limpiarCanvas()
	{
		ctx.clearRect(0, 0, canvas.width, canvas.height);

		dibujarlinea(colorcito,300,600,300,0);
		dibujarlinea(colorcito,600,300,0,300);
	}
