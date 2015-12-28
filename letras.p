/* Programa que escribe en la salida el número de cada una de las letras minúsculas (de la 'a' a la 'z') que obtiene de la entrada */
program letras;

types:
	TipoLetras = array['a'..'z'] of int;

function es_minuscula(c:char):bool
{
	return c >= 'a' and c <= 'z';
}

procedure leer_letras(ref letra:TipoLetras)
	caracter:char;
	fin:bool;
	i:char;
{
	for(i = 'a', i <= 'z'){
		letra[i] = 0;
	}

	fin = False;
	do{
		peek(caracter);
		switch(caracter){
		case Eol:
			readeol();
		case Eof:
			fin = True;
		default:
			read(caracter);
			if(es_minuscula(caracter)){
				letra[caracter] = letra[caracter] + 1;
			}
		}
	}while (not fin);
}

procedure escribirsol(letra:TipoLetras)
	i:char;
{
	writeln("Las siguientes letras aparecen: ");
	for(i = 'a', i <= 'z'){
		write(i);
		write(" = ");
		writeln(letra[i]);
	}
}

procedure main()
	letra:TipoLetras;
{
	leer_letras(letra);
	escribirsol(letra);
}
