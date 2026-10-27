--criar um banco de dados 
create DATABASE EstudosDados;
GO

--selecionar o banco para as proximas consultas 
USE EstudosDados;
GO

--confirmar o banco de dados atual
SELECT DB_name() AS BancoAtual;