--criação da tabela Clientes

create table Clientes(
	ClienteID INT PRIMARY KEY,
	Nome VARCHAR(100),
	Cidade VARCHAR(100)

);

--criação da tabela Vendas
Create table Vendas(
	VendaID INT PRIMARY KEY,
	ClienteID INT,
	Valor DECIMAL(10,2),
	DataVenda DATE,
	FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

--inserir pessoas na tabela cliente
insert into Clientes(ClienteID, Nome, Cidade)
values  
    (1, 'Ana Silva', 'São Paulo'),
    (2, 'Carlos Souza', 'Santos'),
    (3, 'Mariana Lima', 'São Paulo'),
    (4, 'Pedro Costa', 'Campinas'),
    (5, 'Julia Santos', 'Santos');
	

--inserir os dados das vendas na tabela Vendas
insert into Vendas(VendaID, ClienteID, Valor, DataVenda )
values 
    (101, 1, 150.00, '2026-10-01'),
    (102, 2, 320.50, '2026-10-02'),
    (103, 1, 89.90,  '2026-10-03'),
    (104, 3, 450.00, '2026-10-04'),
    (105, 4, 120.00, '2026-10-05'),
    (106, 2, 210.00, '2026-10-06'),
    (107, 5, 75.50,  '2026-10-07'),
    (108, 3, 600.00, '2026-10-08');

    select *
    from Vendas
    Where valor > 200;