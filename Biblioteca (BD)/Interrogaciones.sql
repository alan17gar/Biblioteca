
INSERT INTO public."Libros"(codigo_libro, titulo, genero, fecha_publicacion, autor, editorial, edicion)
	VALUES (1, ' Harry Potter y la piedra filosofal', 'Fantasia', '1997-06-26', 'Joanne Rowling', 'Bloomsbury', '2');
INSERT INTO public."Libros"(codigo_libro, titulo, genero, fecha_publicacion, autor, editorial, edicion)
	VALUES (2, 'Sigue mi voz', 'Ficcion', '2022-07-21', 'Ariana Godoy', 'Montena', '1');
INSERT INTO public."Libros"(codigo_libro, titulo, genero, fecha_publicacion, autor, editorial, edicion)
	VALUES (3, 'Lujuria','Literatura erotica', '2023-05-04', 'Eva Muñoz','Montena', '2');
INSERT INTO public."Libros"(codigo_libro, titulo, genero,fecha_publicacion, autor, editorial, edicion)
	VALUES (4, 'Habitos Atómicos', 'Libro de autoayuda', '2020-09-08', 'James Clear', 'Diana editorial', '1');
INSERT INTO public."Libros"(codigo_libro, titulo, genero, fecha_publicacion, autor, editorial, edicion)
	VALUES (5, 'Perfectos Mentirosos', 'Ficcion', '2020-09-17', 'Alex Mirez', 'Montena', '1');

INSERT INTO public."Personas"(codigo_persona, nombre, apellido, cedula, telefono, correo)
	VALUES (1,'Alan','Garcia','V-30778642','0424-8633677', 'alamem546@gmail.com');
INSERT INTO public."Personas"(codigo_persona, nombre, apellido, cedula, telefono, correo)
	VALUES (2,'Maria','Mendoza','V-28909867','0414-9664312', 'maria2003men@gmail.com');
INSERT INTO public."Personas"(codigo_persona, nombre, apellido, cedula, telefono, correo)
	VALUES (3,'Gabriela','Farfan', 'V-29743420','0424-8000677', 'gabifarfan306@gmail.com');
INSERT INTO public."Personas"(codigo_persona, nombre, apellido, cedula, telefono, correo)
	VALUES (4,'Alejandra','Medina', 'V-30975452','0412-8908134','alejandra7446@gmail.com');

INSERT INTO public."Usuarios"(codigo_usuario, usuario, "contraseña", rol)
	VALUES (111, 'alan17gar', 'alan12345678910', 'Registrador');
INSERT INTO public."Usuarios"(codigo_usuario, usuario, "contraseña", rol)
	VALUES (222, 'indyra_12', 'indyra122211', 'Registrador');
INSERT INTO public."Usuarios"(codigo_usuario, usuario, "contraseña", rol)
	VALUES (333, 'Jeni_123', '20010109jeni', 'Registrador');

INSERT INTO public."Préstamos"( id, codigo_libro, codigo_persona, codigo_usuario, fecha_entrega, fecha_devolucion)
	VALUES (1, 1, 2, 111, '2020-04-12', '2020-04-28');
INSERT INTO public."Préstamos"( id, codigo_libro, codigo_persona, codigo_usuario, fecha_entrega, fecha_devolucion)
	VALUES (2, 5, 3, 111, '2020-02-18', '2020-03-28');
INSERT INTO public."Préstamos"( id, codigo_libro, codigo_persona, codigo_usuario, fecha_entrega, fecha_devolucion)
	VALUES (3, 1, 2, 222, '2020-03-12', '2020-04-13');


SELECT autor,fecha_publicacion FROM public."Libros" where codigo_libro='2';
SELECT codigo_libro,autor FROM public."Libros" where codigo_libro='5';
SELECT nombre, apellido, cedula FROM public."Personas" where codigo_persona=1 ;
SELECT * FROM public."Usuarios";

UPDATE public."Personas" SET telefono='0412-6431123', correo='alejandramedina18@gmail.com' WHERE codigo_persona=4;
UPDATE public."Libros" SET edicion='4' WHERE  codigo_libro=4;
UPDATE public."Libros" SET genero='Novela romántica' WHERE codigo_libro=5; 
UPDATE public."Usuarios" SET usuario='alanmem16' WHERE usuario='alan17gar';


DELETE FROM public."Libros" WHERE codigo_libro=3;
DELETE FROM public."Libros" WHERE codigo_libro=2;