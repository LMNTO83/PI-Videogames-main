CREATE TABLE Genres (
  ID SERIAL PRIMARY KEY,
  Nombre VARCHAR(40) NOT NULL
);

CREATE TABLE Videogames
(
  ID SERIAL PRIMARY KEY,
  Nombre VARCHAR(40) NOT NULL,
  Descripcion TEXT,
  Plataformas VARCHAR(40),
  Imagen VARCHAR(40),
  FechaLanzamiento DATE,
  Rating DECIMAL(3, 1),
  Genres JSON,
  UNIQUE (Nombre)
);

CREATE TABLE VideogameGenres 
(
  ID SERIAL PRIMARY KEY,
  VideogameID INT,
  GenreID INT,
  FOREIGN KEY (VideogameID) REFERENCES Videogames(ID),
  FOREIGN KEY (GenreID) REFERENCES Genres(ID)
);