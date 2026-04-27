-- Geral:

SELECT
	*
FROM vendas;

-- Produtos mais vendidos:

SELECT
	`Product Name`,
    SUM(Sales) AS `Total Vendas`
    FROM vendas
    GROUP BY `Product Name` 
    ORDER BY `Product Name`  DESC
    LIMIT 10;
    
-- TOP categorias:

 SELECT 
	Category,
    SUM(Sales) AS `Total Vendas`
    FROM vendas
    GROUP BY Category
    ORDER BY `Total Vendas` DESC;
    
-- Top regiões:

SELECT 
	Region,
    SUM(Sales) AS Total_vendas
FROM vendas
GROUP BY Region
ORDER BY total_vendas DESC;

-- Faturamento mensal:

SELECT 
	MONTH(`Order Date`) AS Mes,
    SUM(Sales) AS FATURAMENTO
FROM vendas
GROUP BY mes
ORDER BY mes;

-- Lucro total:

SELECT 
	SUM(Profit) lucro_total
FROM vendas;

-- Produtos mais lucrativos

SELECT 
	`Product Name`,
    SUM(Profit) lucro_total
FROM vendas
GROUP BY `Product Name`
ORDER BY lucro_total DESC;

