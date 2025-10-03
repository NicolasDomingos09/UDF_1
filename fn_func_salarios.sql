USE UDF;

CREATE FUNCTION fn_soma_salarios(@id_func INT)
    RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @soma DECIMAL(10, 2)

    DECLARE @salario_func DECIMAL(10,2)
    DECLARE @salario_dep DECIMAL(10,2)

    SELECT @salario_func = salario FROM Funcionario WHERE codigo = @id_func
    SELECT @salario_dep = SUM(salario_dependente) FROM Dependente WHERE funcionario_codigo = @id_func

    SET @soma = @salario_func + @salario_dep

    RETURN @soma
END;

SELECT dbo.fn_soma_salarios(2) AS soma_salarios;
