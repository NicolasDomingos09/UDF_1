USE UDF;
CREATE FUNCTION fn_func_dep()
    RETURNS @tabela TABLE
                    (
                        nome_funcionario    VARCHAR(100),
                        nome_dependente     VARCHAR(100),
                        salario_funcionario DECIMAL(10, 2),
                        salario_dependente  DECIMAL(10, 2)
                    )
AS
BEGIN
    INSERT INTO @tabela
    SELECT f.nome, d.nome, f.salario, d.salario_dependente
    FROM Funcionario f
    INNER JOIN Dependente d ON f.codigo = d.funcionario_codigo

    RETURN
END;

SELECT * FROM fn_func_dep();


