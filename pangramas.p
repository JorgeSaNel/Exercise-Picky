/*  Programa que, por cada línea de la entrada, imprime True si es un pangrama o False si no lo es */
program pangramas;

consts:
	MaxCaracter = 128;
	MaxLineas = 400;

types:
	TipoSol = array[0..MaxLineas - 1] of bool;
	TipoLong = array[0..MaxLineas - 1] of int;
	TipoLetras = array['a'..'z'] of int;

	TipoPangrama = record
	{
		longitud:TipoLong;
		letra:TipoLetras;
		solucion:TipoSol;
	};

function es_minuscula(c:char):bool
{
	return c >= 'a' and c <= 'z';
}

function es_mayuscula(c:char):bool
{
	return c >= 'A' and c <= 'Z';
}

procedure inicializar_caracter(ref pangrama:TipoPangrama)
	i:char;
{
	for(i = 'a', i <= 'z'){
		pangrama.letra[i] = 0;
	}
}

procedure ver_pangrama(ref pangrama:TipoPangrama, pos:int)
	i:char;
{
	pangrama.solucion[pos] = True;
	for(i = 'a', i <= 'z'){
		if(pangrama.letra[i] == 0){
			pangrama.solucion[pos] = False; 		
		}
	}
}
procedure leer_letras(ref pangrama:TipoPangrama, ref lineas:int)
	caracter:char;
	fin:bool;
	i:char;
{
	inicializar_caracter(pangrama);
	fin = False;
	lineas = 0;
	do{
		peek(caracter);
		switch(caracter){
		case Eol:
			ver_pangrama(pangrama, lineas);
			inicializar_caracter(pangrama);
			lineas = lineas + 1;

			readeol();
		case Eof:
			fin = True;
		default:
			pangrama.longitud[lineas] = 0; 
			do{
				read(caracter);
				pangrama.longitud[lineas] = pangrama.longitud[lineas] + 1;
				
				if(es_mayuscula(caracter)){
					caracter = char(int(caracter) + 32);
				}
				if(es_minuscula(caracter)){
					pangrama.letra[caracter] = pangrama.letra[caracter] + 1;
				}
			}while(caracter != Eol and caracter != Eof);
			pangrama.longitud[lineas] = pangrama.longitud[lineas] - 1; /* Para que no cuente el fin de linea o fin de fichero*/
		}
	}while (not fin);
}

function pangr_val(pangrama:TipoPangrama, pos:int):bool
{
	return pangrama.longitud[pos] <= MaxCaracter;
}

procedure escribir_sol(pangrama:TipoPangrama, numlin:int)
	k:int;
{
	k = 0;
	while(k < numlin){
		if(pangr_val(pangrama, k)){
			writeln(pangrama.solucion[k]);
		}else {
			writeln("La cadena introducida es demasiado larga");
		}
		k = k + 1;
	}
}	

procedure main()
	pangrama:TipoPangrama;
	numleidos:int;
{
	leer_letras(pangrama, numleidos);
	escribir_sol(pangrama, numleidos);
}
