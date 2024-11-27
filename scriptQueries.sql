
SELECT p.Categoria, p.Descrição Nome 
FROM Produto p
LEFT JOIN Produto_Pedido PP 
ON p.idProduto = pp.Produto_idProduto
WHERE  pp.Pedido_idPedido IS NULL;  


SELECT f.Nome_Fantasia, f.CNPJ, f.Telefone
FROM Produto  
LEFT JOIN Produto_Pedido pp ON Produto.idProduto = pp.Produto_idProduto
LEFT JOIN Produto_Fornecedor pf ON  Produto.idProduto = pf.Produto_idProduto
LEFT JOIN Fornecedor f on pf.Fornecedor_idFornecedor = f.idFornecedor
WHERE pp.Pedido_idPedido IS NULL
UNION 
SELECT vt.Nome_Fantasia, vt.CNPJ, vt.Telefone
FROM Produto 
LEFT JOIN Produto_Pedido pp ON Produto.idProduto = pp.Produto_idProduto
LEFT JOIN Produto_Vendedor_Tercerizado pvt on Produto.idProduto = pvt.Produto_idProduto
LEFT JOIN Vendedor_Terceirizado vt ON pvt.Vendedor_idVendedor_Terceirizado = vt.idVendedor_Terceirizado
WHERE pp.Pedido_idPedido IS NULL;


SELECT  e.Endereço, e.Telefone
FROM Estoque es
JOIN Produto_Estoque pe ON es.idEstoque = pe.Estoque_idEstoque
JOIN Produto_Vendedor_Tercerizado pvt ON pe.Produto_idProduto = pvt.Produto_idProduto
JOIN Vendedor_Terceirizado vt ON pvt.Vendedor_idVendedor_Terceirizado = vt.idVendedor_Terceirizado
JOIN Endereço e ON es.Endereço = e.idEndereço
WHERE vt.Vendedor_idVendedor_Terceirizado = 2;   