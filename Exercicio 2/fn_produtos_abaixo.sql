USE UDF_2;

CREATE FUNCTION fn_numero_produtos_abaixo(@qtd INT)
    RETURNS INT
AS
BEGIN
    DECLARE @produtos INT

    SELECT @produtos = COUNT(*)
    FROM Produtos
    WHERE qtd_estoque < @qtd

    RETURN @produtos
END;

SELECT dbo.fn_numero_produtos_abaixo(80) AS 'Produtos abaixo de 80';


