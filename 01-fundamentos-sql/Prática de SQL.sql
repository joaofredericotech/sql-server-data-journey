SELECT
C.Nome,
SUM(V.Valor) AS TotalVendas
FROM Vendas AS V
INNER JOIN Clientes AS C
ON C.ClienteID = V.ClienteID
group by C.Nome;

----------------------------------------------------------------------------------------
select 
C.Nome,
COUNT(V.Valor) as QuantidadeVendas

from Vendas as V
inner join Clientes as C
ON V.ClienteID = C.ClienteID
group by C.Nome;
-----------------------------
SELECT 
C.Nome,
COUNT(V.VendaID) AS QuantidadeVendas,
SUM(V.Valor) AS TotalGasto
FROM Vendas AS V
inner join Clientes as C
ON V.ClienteID = C.ClienteID
GROUP BY C.Nome
ORDER BY TotalGasto DESC;
-------------------------------------------
select
C.Nome,
COUNT(V.VendaID) AS QuantidadeVendas,
SUM(V.Valor) AS TotalGasto
FROM Vendas AS V
INNER JOIN Clientes AS C
ON C.ClienteID = V.ClienteID
WHERE V.Valor > 100
GROUP BY C.Nome
HAVING COUNT(V.VendaID) >= 2
ORDER BY TotalGasto DESC;
-----------------------------------------








select
C.Nome,
COUNT(V.VendaID) AS QuantidadeVenda,
SUM(V.Valor) AS TotalVendas

FROM Clientes AS C
INNER JOIN Vendas AS V
ON C.ClienteID = V.ClienteID
WHERE V.Valor > 100
GROUP BY C.Nome
HAVING COUNT(V.VendaID) >= 2
ORDER BY TotalVendas DESC;
-----------------------------------




select TOP 2

C.Nome,
COUNT(V.VendaID) AS QuantidadeVendas,
SUM(V.Valor) AS GastoTotal
FROM Clientes AS C
INNER JOIN Vendas AS V
ON C.ClienteID = V.ClienteID
WHERE V.Valor > 100
GROUP BY C.Nome
HAVING COUNT(V.VendaID) >= 2

-----------------------------------------------------------


select TOP 2
C.Nome,
COUNT(V.VendaID) AS  QuantVenda,
SUM(V.Valor) AS GastoTotal
FROM Clientes AS C
INNER JOIN Vendas AS V
ON C.ClienteID = V.ClienteID
WHERE V.Valor > 100
GROUP BY C.ClienteID, C.Nome
HAVING COUNT(V.VendaID) >= 2
ORDER BY GastoTotal DESC;



































