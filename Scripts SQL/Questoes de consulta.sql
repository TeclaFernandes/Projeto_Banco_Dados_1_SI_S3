-- Questao 3
SELECT p.nome AS projeto_nome, c.nome AS cliente_nome
FROM projeto p
JOIN cliente c ON p.cliente = c.cod_cliente
WHERE c.nome = 'GelaHomer';

-- Questao 4
SELECT d.cod_dev, d.nome, d.custo_hora, d.nivel, e.nome AS especialidade
FROM dev d
JOIN especialidade e ON d.especialidade = e.cod_especialidade
JOIN trabalha t ON d.cod_dev = t.cod_dev
JOIN projeto p ON t.id_projeto = p.id
WHERE p.nome = 'Sistema Financeiro';

-- Questao 5
SELECT d.cod_dev, d.nome, d.custo_hora, d.nivel, e.nome AS especialidade
FROM dev d
JOIN especialidade e ON d.especialidade = e.cod_especialidade
WHERE e.nome = 'Mobile' AND d.custo_hora < 90.0;

-- Questao 6
SELECT d.cod_dev, d.nome
FROM dev d
JOIN trabalha t ON d.cod_dev = t.cod_dev
JOIN projeto p ON t.id_projeto = p.id
JOIN especializa esp ON d.cod_dev = esp.cod_dev
JOIN especialidade e ON esp.cod_especialidade = e.cod_especialidade
WHERE p.nome = 'Sistema Financeiro' 
AND e.nome IN ('Backend', 'Java') GROUP BY d.cod_dev, d.nome HAVING COUNT(DISTINCT e.nome) = 2;

-- Questao 7
UPDATE dev SET custo_hora=custo_hora*1.1 WHERE cod_dev = 1;
SELECT * FROM dev WHERE cod_dev = 1;

-- Questao 8
UPDATE dev SET nivel = CASE nivel WHEN 'junior' THEN 'pleno' WHEN 'pleno' THEN 'senior' WHEN 'senior' THEN 'senior' END WHERE cod_dev = 1;
SELECT * FROM dev WHERE cod_dev = 1;




