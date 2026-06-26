USE devweb;

-- cliente
INSERT INTO cliente (cnpj, nome) VALUES 
('12345678000100', 'Crajubar'), 
('23456789000100', 'GelaHomer'), 
('34567890000100', 'Claro'), 
('45678900000100', 'Amazon Web Services'), 
('56789000000100', 'Netflix');

-- especialidade
INSERT INTO especialidade (nome) VALUES 
('Frontend'), 
('Backend'), 
('DevOps'), 
('Mobile'), 
('Web'), 
('Python'),
('Java');

-- desenvolvedor
INSERT INTO dev (nome, custo_hora, especialidade, nivel) VALUES
('Carlos Mendes', 50.0, 1, 'junior'),
('Ana Paula', 70.0, 2, 'pleno'),
('Ricardo Silva', 60.0, 3, 'senior'),
('Beatriz Costa', 55.0, 4, 'junior'),
('Felipe Rocha', 100.0, 5, 'pleno'),
('João Lima', 80.0, 6, 'pleno'),
('Mariana Souza', 90.0, 2, 'senior');

-- projeto
INSERT INTO projeto (nome, cliente, data_inicio, data_fim) VALUES
('Sistema Financeiro', 1, '2025-01-01', '2025-06-30'),
('App Mobile', 2, '2025-02-01', '2025-07-31'),
('Plataforma Web', 3, '2025-03-01', '2025-08-31'),
('Portal Corporativo', 4, '2025-04-01', '2025-09-30'),
('Sistema de QA', 5, '2025-05-01', '2025-10-31'),
('Gestão RH', 2, '2025-03-15', '2025-09-15');

-- desenvolvedor alocado em projeto
INSERT INTO trabalha (cod_dev, id_projeto, inicio, fim) VALUES
(1, 1, '2025-01-01 08:00:00', '2025-06-30 18:00:00'),
(2, 1, '2025-01-05 09:00:00', '2025-06-30 18:00:00'),
(3, 2, '2025-02-01 08:30:00', '2025-07-31 17:30:00'),
(4, 3, '2025-03-01 09:00:00', '2025-08-31 18:00:00'),
(5, 4, '2025-04-01 08:00:00', '2025-09-30 17:00:00'),
(6, 5, '2025-05-01 08:00:00', '2025-10-31 17:00:00'),
(7, 1, '2025-01-10 09:00:00', '2025-06-30 18:00:00');

-- especializa (múltiplas especialidades por dev)
INSERT INTO especializa (cod_especialidade, cod_dev) VALUES
(1, 1), (6, 1),   -- Frontend Python
(2, 2), (7, 2),   -- Backend Java
(3, 3), (6, 3),   -- DevOps Python
(4, 4),           -- Mobile
(5, 5), (6, 5),   -- Web Python
(2, 7), (7, 7);   -- Backend Java
