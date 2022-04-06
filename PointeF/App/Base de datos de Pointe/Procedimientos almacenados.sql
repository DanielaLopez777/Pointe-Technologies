
/*Insert Dancer */
CREATE PROC insertDancer 
    @password varchar(20),
    @nombre varchar(20),
    @idWarning varchar (1)
    AS

    INSERT INto Dancers ([Password],Nombre,Id_Warn)
    VALUES (@password,@nombre,@idWarning)

/*Insert Injuries */
CREATE PROC insertarInjuries
    @idWarning varchar(1),
    @Description varchar(150),
    AS
    INSERT INto Injuries (Id_Warning,[Description])
    VALUES (@idWarning,@Description)

/*Inicio de sesión */
CREATE PROC login_Dancer 
@id int ,
@password varchar(20)
AS
IF exists (select * from Dancers where Id_Dancer=@id and [Password]=@password)
    select 'TRUE'
ELSE
    select 'FALSE'


CREATE PROC login_Professsor
@id int ,
@password varchar
AS
IF exists (select * from Professors where Id_Professor=@id and [Password]=@password)
    select 'TRUE'
ELSE
    select 'FALSE'

