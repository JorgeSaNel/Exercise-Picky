/*
 * Programa para calcular las soluciones del ej. 2, capítulo 2 del libro de Picky
 * Los enunciados se encuentras en la página 34 del libro.
 */

program expresiones;

/* Constantes Universales */
consts:
	Pi = 3.1415926;

/* Llamamos al Ejercico 2.a, expresion1, al 2.b, expresion2.. y así sucesivamente hasta el 2.g, expresion7 */

function expresion1 ():float
{
	return 2.7 ** 2.0 + (-3.2 ** 2.0);
}

function expresion2 (r: float) : float
{
	return (4.0 / 3.0) * Pi * r ** 3.0 ;
}

function expresion3 (): float
{
	return 5.0 * 4.0 * 3.0 * 2.0 * 1.0;
}

function expresion4 ():float
{
	return (4.0 * 3.0 * 2.0 * 1.0)/ ((3.0 * 2.0* 1.0)*(4.0-3.0));
}

function expresion5 (Pi:float): float
{
	return sqrt(Pi);
}

function expresion6 (x:float):float
{
	return (sin (x)**2.0) + (cos(x)**2.0) ;
}

function expresion7 (X:float): float
{
	return (1.0 / sqrt(3.5 * X** 2.0 + 4.7 * X + 9.3 ));
}

/* Constantes de prueba */
consts:
	R = 1.0;
	X = 2.0;

/* Programa principal */
procedure main ()
{
	/* 2.7 ** 2.0 + (-3.2 ** 2.0) */ 
	writeln (expresion1 () );
	
	/* (4/3)*Pi*r³ */
	write (expresion2 (R));
	write (", " );
	write (expresion2 (R*2.3));
	write (", " );
	write (expresion2 (R*3.8));
	write (" y " );
	writeln (expresion2 (R*4.8));
	
	/* 5 Factorial */
	writeln (expresion3 ()); 	

	/* A!/( B!(A-B)! ) , donde A=4 y B=3 */
	writeln (expresion4 () );	

	/* Raiz cuadrada Pi */
	writeln (expresion5(Pi)); 	

	/* sen²(x) + cos²(x) */
	write (expresion6 (Pi*1.0));
	write (", " );
	write (expresion6 (Pi*2.0));
	write (" y " );
	writeln (expresion6 (4.0*Pi/3.0));

	/* 1.0/sqrt(3.5*X² + 4.7*X + 9.3) */
	writeln (expresion7 (X)); 
}
