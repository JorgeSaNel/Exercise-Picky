/* Programa que convierte un numero romano en un numero arabigo */
program romano;

consts:
	MaxNums = 6;
types:
	TipoRomano = array [0..MaxNums - 1] of char;
	TipoArabigo = array [0..MaxNums - 1] of int;

procedure leer_romanos(ref romanos:TipoRomano)
{
	write("Escriba un numero romano: ");
	readln(romanos);
}

procedure dar_valores(romanos:TipoRomano, ref arabigos:TipoArabigo, ref error:bool)
	i:int;
{
	error = False;
	for(i = 0, i < len romanos){	
		switch(romanos[i]){
		case 'I':
			arabigos[i] = 1;
		case 'V':
			arabigos[i] = 5;
		case 'X':
			arabigos[i] = 10;
		case 'L':
			arabigos[i] = 50;
		case 'C':
			arabigos[i] = 100;
		case 'D':
			arabigos[i] = 500;
		case 'M':
			arabigos[i] = 1000;
		default:
			error = True;
		}
	}
}

procedure convertir(arabigos:TipoArabigo, ref suma:int)
	romanos:TipoRomano;
	i:int;
{
	if(arabigos[0] >= arabigos[1]){
		suma = arabigos[0];
	}else {
		suma = -1 * arabigos[0];
	}

	for(i = 1, i < len romanos - 1){
		if(arabigos[i] >= arabigos[i + 1]){
			suma = arabigos[i] + suma;
		}else {
			suma = arabigos[i] - suma;
			suma = -1 * suma;
		}
	}

	suma = arabigos[len romanos - 1] + suma;	
}

procedure imprimir_resultado(romanos:TipoRomano, suma:int, error:bool)
{
	if(error){
		writeln("El numero romano introducido es invalido");
	}else {
		write("El numero ");
		write(romanos);
		write(" = ");
		writeln(suma);
	}
}

procedure main()
	romanos:TipoRomano;
	arabigos:TipoArabigo;
	error:bool;
	suma:int;
{
	leer_romanos(romanos);
	dar_valores(romanos, arabigos, error);
	convertir(arabigos, suma);
	imprimir_resultado(romanos, suma, error);
}
