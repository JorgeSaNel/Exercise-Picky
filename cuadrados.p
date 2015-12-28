/* Programa que lee un máximo de 10 cuadrados de la entrada e imprime todos los cuadrados válidos hasta introducir uno inválido */
program prueba;

consts:
	NumCuadrados = 10;
types:
	TipoCuadrado = record
	{
		lado:int;
		caracter1:char;
		caracter2:char;
	};

	MultiplesCuadrados = array[1..NumCuadrados] of TipoCuadrado;

procedure leer_lado(ref cuadrado:TipoCuadrado)
{	
	write("Escriba el lado del cuadrado: ");
	readln(cuadrado.lado);
}

procedure leer_caracteres(ref cuadrado:TipoCuadrado)
{
	write("Escriba el caracter del triangulo superior derecho: ");
	readln(cuadrado.caracter1);
	write("Escriba el caracter del triangulo inferior izquierdo: ");
	readln(cuadrado.caracter2);
}

function esvalido(cuadrado:TipoCuadrado):bool
{
	return cuadrado.lado >= 1 and cuadrado.caracter1 != cuadrado.caracter2;
}

procedure leer_cuadrados(ref mult_cuadrados:MultiplesCuadrados, ref leidos:int)
	y:int;
	x:int;
	cuadrado:TipoCuadrado;
{
	cuadrado.lado = 3;	/* Inicializamos los valores de cuadrado */
	cuadrado.caracter1 = 'o';
	cuadrado.caracter2 = 'x';

	x = 1;
	do{
		leer_lado(cuadrado);
		if(cuadrado.lado >= 1){
			leer_caracteres(cuadrado);
		}
		mult_cuadrados[x] = cuadrado;	/* Guardamos los valores introducidos */
		leidos = x;
				
		x = x + 1;
		writeeol();	
	}while(esvalido(cuadrado) and x <= len mult_cuadrados);

	writeln(esvalido(cuadrado));
}

procedure dibujar_cuadrado(cuadrado:TipoCuadrado)
	x:int;
	y:int;
{
	if(esvalido(cuadrado)){
		writeeol();
		for(x = 1, x <= cuadrado.lado){
			/* Triangulo inferior izquierdo */
			for(y = 1, y <= x - 1){
				write(cuadrado.caracter2);
			}
			/* Triangulo superior derecho */
			for(y = x, y <= cuadrado.lado){
				write(cuadrado.caracter1);
			}
		writeeol();
		}
	}
}

procedure main()
	mult_cuadrados:MultiplesCuadrados;
	leidos:int;
	x:int;
{
	leer_cuadrados(mult_cuadrados, leidos);
	for(x = leidos, x >= 1){
		dibujar_cuadrado(mult_cuadrados[x]);
	}
}
