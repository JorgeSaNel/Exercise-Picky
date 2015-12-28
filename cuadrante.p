/* Programa para saber a que cuadrante o eje pertenece el punto (X,Y) */

program cuadrante;

/* Funcion con los cuatro posibles cuadrantes */
function cuadrantes(x:int, y:int):int
{
	if(x>0 and y>0){
		return 1;
	}else if (x<0 and y>0){
		return 2;
	}else if (x<0 and y<0){
		return 3;
	}else if (x>0 and y<0){
		return 4;
	}else{
		return 0;
	}
}

/* Funcion con los distintos tipos de ejes, incluido el centro de coordenadas */
function ejes(x:int, y:int):int
{
	if(x==0 and y==0){
		return 3;
	}else if(y==0){
		return 2;
	}else if(x==0){
		return 1;
	}else{
		return 0;
	}
}

/* Constantes de prueba */
consts:
	X = 1;
	Y = -7;

procedure main()
{
	write("El punto (");
	write(X);
	write(",");
	write(Y);
	write(") esta en el ");

	switch (cuadrantes(X,Y)){
 	case 1:
		writeln("primer cuadrante");
	case 2:
		writeln("segundo cuadrante");
	case 3:
		writeln("tercer cuadrante");
	case 4:
		writeln("cuarto cuadrante");
	}

	switch (ejes(X,Y)){
	case 3:
		writeln("centro de coordenadas");
	case 2:
		writeln("eje horizontal");
	case 1:
		writeln("eje vertical");
	}
}
