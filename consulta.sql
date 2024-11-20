CREATE VIEW ContasNPagas AS
SELECT
	c.contaID AS 'ID da Conta',
    c1.Nome AS 'Nome do(a) Cliente',
    c1.CPF AS 'CPF do(a) Cliente',
    c.DataVencimento AS 'Data de Vencimento',
    c.Valor AS 'Valor'
FROM
	ContaReceber c
JOIN
	Cliente c1 ON c.clienteID = c1.clienteID
WHERE
	c.Situacao = '1';
