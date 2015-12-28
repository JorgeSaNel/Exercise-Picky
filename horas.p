/* Programa para calcular la diferencia entre dos horas
 * dadas en Horas.Minutos.Segundos
 */

program horas;

/* Constantes Universales */
/* Llamamos a 60 como Factor Tiempo (FacT), pues sera nuestro factor de conversor en el tiempo */
consts:
	FacT = 60;

/* Pasamos las horas que nos han dado a segundos */
function segundos(horas:int, minutos:int, segundos:int):int
{
	return horas * FacT ** 2 + minutos * FacT + segundos;
}

/* Restamos las dos horas en forma de segundos */
function resta(H:int, M:int, S:int, h:int, m:int, s:int):int
{
	return segundos(H,M,S) - segundos(h,m,s);
}

/* Convertimos la solucion a segundos*/
function seg(t:int):int
{
	return t % FacT;
}

/* Convertimos la solucion a minutos*/
function min(t:int):int
{
	return (t /FacT) % FacT;
}

/* Convertimos la solucion a horas*/
function hor(t:int):int
{
	return (t /(FacT**2)) % FacT;
}

/* 1 segundo = 10⁶ microsegundos */
function microsegundo():int
{
	return 5576 * (10 ** 6);
}

/* Constantes de prueba */
consts:
	/* Es la primera hora, H1.M1.S1 */
	H1 = 9;
	M1 = 34;
	S1 = 29;
	
	/* Es la segunda hora, H2.M2.S2 */	
	H2 = 7;
	M2 = 58;
	S2 = 13;

procedure main ()
{
	write(hor(resta(H1,M1,S1, H2,M2,S2)));
	write (".");
	write (min(resta(H1,M1,S1, H2,M2,S2)));
	write (".");
	writeln (seg(resta(H1,M1,S1, H2,M2,S2)));
	
	writeln(microsegundo());
}
