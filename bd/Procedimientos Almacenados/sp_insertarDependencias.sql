#Procedimiento para insertar Dependencia
DELIMITER //
create procedure sp_insertarDependencias(nombreDeependencia VARCHAR(45), calle VARCHAR(45),colonia VARCHAR(45),numero VARCHAR(45),
codigoPostal VARCHAR(45),entreCalles VARCHAR(45))
begin
set @id= (select   idDependencia from dependencia ORDER BY idDependencia DESC limit 1) ;
set @id=@id+1;
insert into dependencia values (default, nombreDeependencia, calle, colonia, numero, codigoPostal,
    entreCalles);
end
;
//
DELIMITER ;


