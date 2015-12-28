/* Programa que dibuja cuadrados, dividido en dos triangulos, hasta que lea un cuadrado inválido. */
program prueba;

types:
	TipoCuadrado = record
	{
		lado:int;
		caracter1:char;
		caracter2:char;
	};

procedure leer_lado(ref c:TipoCuadrado)
{	
	write("Escriba el lado del cuadrado: ");
	readln(c.lado);
}

procedure leer_caracteres(ref c:TipoCuadrado)
{
	write("Escriba el caracter del triangulo superior derecho: ");
	readln(c.caracter1);
	write("Escriba el caracter del triangulo inferior izquierdo: ");
	readln(c.caracter2);
}

procedure dibujar_cuadrado(c:TipoCuadrado)
	x:int;
	y:int;
{
	for(x = 1, x <= c.lado){
		/* Triangulo inferior izquierdo */
		for(y = 1, y <= x - 1){
			write(c.caracter2);
		}
		/* Triangulo superior derecho */
		for(y = x, y <= c.lado){
			write(c.caracter1);
		}
		writeeol();
	}
}

procedure escr_cuadrado(ref c:TipoCuadrado)
{
	leer_lado(c);
		if(c.lado >= 1){
			leer_caracteres(c);
			if(c.caracter1 != c.caracter2){
				dibujar_cuadrado(c);
			}else {
				writeln("Los caracteres introducidos no pueden ser iguales");
			}
		}else {
			writeln("El lado introducido es incorrecto");
		}
}

function esvalido(c:TipoCuadrado):bool
{
	return c.lado >= 1 and c.caracter1 != c.caracter2;
}

procedure main()
	c:TipoCuadrado;
{
	do{
		escr_cuadrado(c);
	} while (esvalido(c));
}
