use Pointe2022

CREATE TABLE Professors(
    Id_Professor INT NOT NULL PRIMARY KEY IDENTITY (50000,1)
    ,Password VARCHAR(20) NOT NULL, 
	Name varchar (20)
)

CREATE TABLE Classes(
    Id_Class varchar(3) not null primary key
    ,Grade INT NOT NULL
    ,Groupe INT NOT NULL
    ,Id_Prof INT NOT NULL
)

ALTER TABLE Classes
ADD FOREIGN KEY (Id_Prof) REFERENCES Professors(Id_Professor);

CREATE TABLE Injuries(
    Id_Warning varchar(1) NOT NULL PRIMARY KEY 
    ,Description VARCHAR(150) not NULL
)

CREATE TABLE Recomendations(
	Id_Warning varchar(1) NOT NULL
	,Description varchar(150)
	,Videos Varchar(50)
)
ALTER TABLE Recomendations
ADD FOREIGN KEY (Id_Warning) REFERENCES Injuries(Id_Warning);

CREATE TABLE Dancers(
    Id_Dancer INT NOT NULL PRIMARY KEY IDENTITY (10000,1)
    ,Password VARCHAR(20)NOT NULL
	,Nombre varchar (20)
    ,High_impact int NOT NULL default(0)
    ,Turns int NOT NULL default(0)
    ,Brush int NOT NULL default(0)
    ,Balance int NOT NULL default(0)
    ,Legs_Height int NOT NULL default(0)
    ,Id_Warn varchar(1) NOT NULL default(0) 
)

ALTER TABLE Dancers
ADD FOREIGN KEY (Id_Warn) REFERENCES Injuries(Id_Warning);

CREATE TABLE Schedules(
    Id_Class varchar(3) NOT NULL
    ,Id_Dancer INT NOT NULL
    ,Hour TIME
    ,Classroom varchar(3)
)

ALTER TABLE Schedules
ADD FOREIGN KEY (Id_Class) REFERENCES Classes(Id_Class);

ALTER TABLE Schedules
ADD FOREIGN KEY (Id_Dancer) REFERENCES Dancers(Id_Dancer);