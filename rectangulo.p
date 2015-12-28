/* Programa que determina si la intersección de dos rectángulos (con lados paralelos a los ejes de coordenadas) tienen interseción. */program rectangulo;
	
consts:
	PrimerRec = 1;
	SegundoRec = 2;

types:
	TipoPunto = record
	{
		x:int;
		y:int;
	};
	TipoRectangulo = record
	{
		min: TipoPunto;
		max: TipoPunto;
	};

procedure leerpunto(ref p: TipoPunto)
{
	write("X = ");
	readln(p.x);
	write("Y = ");
	readln(p.y);
}

procedure leercoordenadas(ref r:TipoRectangulo)
{
	leerpunto(r.max);
	writeln("Esquina inferior derecha");
	leerpunto(r.min);
}	

/* Procedemos a la lectura de las esquinas de ambos rectangulos */
procedure leerrectangulo(ref r1:TipoRectangulo, ref r2:TipoRectangulo)
{
	writeln("Primer Rectangulo: esquina superior izquierda");
	leercoordenadas(r1);
	writeln("Segundo Rectangulo: esquina superior izquierda");
	leercoordenadas(r2);
}

function interseccion(max1:int, min1:int, max2:int, min2:int):bool
{
	return max1 <= min2 and min1 >= max2;
}

function datosincorrectos(r:TipoRectangulo):bool
{
	return r.max.x >= r.min.x or r.max.y <= r.min.y ;
}

/* Escribimos las posibles soluciones */
procedure escr_solucion(ref r1:TipoRectangulo, ref r2:TipoRectangulo)
{
	if (datosincorrectos(r1) or datosincorrectos(r2)){
		writeln("Los datos introducidos son incorrectos");
	}else if (interseccion(r1.max.x, r1.min.x, r2.max.x, r2.min.x) and interseccion(r1.min.y, r1.max.y, r2.min.y, r2.max.y)){
		writeln("Interseccion: Si");
	}else {
		writeln("Interseccion: No");
	}
}

procedure escr_coordenadas(x:int, y:int)
{
	write(x);
	write(",");
	write(y);
}

/* Hacemos que los datos introducidos salgan por la salida */
procedure escr_rectangulo(r:TipoRectangulo, rec:int)
{
	write("Rectangulo ");
	write(rec);
	write(": esquina superior izquierda (");
	escr_coordenadas(r.max.x, r.max.y);
	write("), esquina inferior derecha (");
	escr_coordenadas(r.min.x, r.min.y);
	writeln(")");
}


procedure main()
	r1:TipoRectangulo;
	r2:TipoRectangulo;
{
	leerrectangulo(r1,r2);
	
	escr_rectangulo(r1, PrimerRec);
	escr_rectangulo(r2, SegundoRec);
		
	escr_solucion(r1, r2);
}
