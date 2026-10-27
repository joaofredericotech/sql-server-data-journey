/* Imagine que seu gestor pergunte:
Quem realizou cada venda, em qual cidade o cliente mora e qual foi o valor comprado?

A tabela Vendas tem o valor e o identificador do cliente, mas não tem o nome nem a cidade. Essas informações estão na tabela Clientes.

O JOIN permite combinar os dados das duas tabelas. */

select 
	V.VendaID,
	C.Nome,
	C.Cidade,
	V.Valor,
	V.DataVenda

FROM Vendas AS V --Usa Vendas como tabela principal e cria o apelido V.
INNER JOIN Clientes AS C --Combina com Clientes, usando o apelido C.
	ON V.ClienteID = C.ClienteID; --Define como relacionar as linhas das duas tabelas.

	---------------------------------------------------------------------------------------------
	/*Imagine que seu gestor pediu:
“Quero ver todas as vendas feitas por clientes que moram em São Paulo.”*/

select 
	V.VendaID,
	C.Nome,
	C.Cidade,
	V.Valor,
	V.DataVenda

FROM Vendas AS V --Usa Vendas como tabela principal e cria o apelido V.
INNER JOIN Clientes AS C --Combina com Clientes, usando o apelido C.
	ON V.ClienteID = C.ClienteID --Define como relacionar as linhas das duas tabelas
	WHERE C.Cidade = 'São Paulo'
	AND V.Valor > 200;
	
	------------------------------------------------------------------------------------
	/*Imagine que seu gestor pediu:
“Mostre todas as vendas, da maior para a menor, incluindo o nome do cliente.”

Para fazer isso, vamos combinar o INNER JOIN que você já aprendeu com ORDER BY.*/

SELECT 
	V.VendaID,
	C.Nome,
	C.Cidade,
	V.Valor,
	V.DataVenda

FROM Vendas AS V
INNER JOIN Clientes AS C
ON V.ClienteID = C.ClienteID

ORDER BY V.Valor DESC;
--- DESC: significa ordem decrescente, do maior para o menor.
--Se usássemos ASC, a ordenação seria crescente, do menor para o maior. Quando você não informa ASC ou DESC, o SQL Server usa ASC por padrão.