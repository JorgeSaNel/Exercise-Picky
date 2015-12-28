program media;

procedure leer_valores(ref a:float, ref b:float, ref c:float)
{
	writeln("Escribe tres valores:");
	readln(a);
	readln(b);
	readln(c);
}

function media_valores(a:float, b:float, c:float):float
{
	return (a + b + c)/ 3.0;
}

procedure imprimir_valo(ref a:float, ref b:float, ref c:float)
{
	write("La media es ");
	writeln(media_valores(a,b,c));
}

procedure main()
	a:float;
	b:float;
	c:float;
{
	leer_valores(a,b,c);
	imprimir_valo(a,b,c);
}
