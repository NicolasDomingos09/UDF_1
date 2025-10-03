USE UDF_3;

CREATE FUNCTION fn_compra(@cliente INT, @produto INT, @qtd INT)
    RETURNS @tabela TABLE
                    (
                        cliente     VARCHAR(100),
                        produto     VARCHAR(100),
                        qtd         INT,
                        valor_total DECIMAL(7, 2),
                        data_hoje   DATE
                    )
AS
BEGIN
    INSERT INTO @tabela
    SELECT c.nome, p.nome, @qtd, (@qtd * p.valor), GETDATE()
    FROM cliente c,
         produto p
    WHERE c.codigo = @cliente
      AND p.codigo = @produto

    RETURN
END;

SELECT *
FROM fn_compra(1, 101, 2)

