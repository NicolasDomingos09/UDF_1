USE UDF_2;

CREATE FUNCTION fn_estoque_abaixo(@qtd INT)
    RETURNS @tabela TABLE
                    (
                        codigo       INT,
                        nome         VARCHAR(100),
                        qtd_produtos INT
                    )
AS
BEGIN
    INSERT INTO @tabela
    SELECT codigo, nome, qtd_estoque
    FROM Produtos
    WHERE qtd_estoque < @qtd;

    RETURN
END

SELECT * FROM fn_estoque_abaixo(120);
