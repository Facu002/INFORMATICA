program TP_Acha;
  VAR
    aux, tipo :char;
    florTopVenta : ShortString;
    n, i, cantTipoFlor, maxCantVenta, ventaRosa, ventaFresia, ventaMargarita: byte;
    arch: text;

begin
//lectura del archivo
    assign (arch,'Floreria.txt');
    reset(arch);
    readln(arch,n);

//inicializacion
    ventaFresia:= 0;
    ventaRosa:= 0;
    ventaMargarita:= 0;
    maxCantVenta:= 0;

//contadores de datos
    for i:=0 to n do
     begin
       readln(arch, tipo, aux, cantTipoFlor);
       case tipo of
         'F': ventaFresia := (ventaFresia + cantTipoFlor);
         'R': ventaRosa := (ventaRosa + cantTipoFlor);
         'M': ventaMargarita := (ventaMargarita + cantTipoFlor);
       end;
     end;

//seleccionador de valores maximos
     if (maxCantVenta < ventaFresia) then
        begin
          maxCantVenta := ventaFresia;
          florTopVenta := 'fresia';
        end
     else if (maxCantVenta < ventaRosa) then
          begin
            maxCantVenta := ventaRosa;
            florTopVenta := 'rosa';
          end
          else if (maxCantVenta < ventaMargarita) then
            begin
              maxCantVenta := ventaMargarita;
              florTopVenta := 'margarita';
            end;

//mostrar datos
    writeln('Se recaudaron $', (ventaFresia*800), ' de fresias..');
    writeln('Se recaudaron $', (ventaRosa*2000), ' de rosas..');
    writeln('Se recaudaron $', (ventaMargarita*500), ' de margarita..');

    writeln('La flor mas vendida fue la ', florTopVenta, ' con ', maxCantVenta, ' unidades vendidas..');

readln;
end.

