insert into ispc_peluqueria_canina.dueno values ('35412874', 'Julio', 'Ramirez', '3624685846', 'Brasil 788');
insert into ispc_peluqueria_canina.perro values ('11', 'Negro', '2019-01-04', 'macho', '35412874');

select perro.Nombre		
from perro		
join dueno		
on perro.Dueno_DNI = dueno.DNI		
where dueno.Nombre = 'Pedro';		
