USE Oficina;

SELECT * FROM PessoaFisica;
INSERT INTO PessoaFisica VALUES (1, 'Danilo', 11111111101, 'Jardim SP, 111', '11122233323'),
								(2, 'Kelly', 22222222202, 'Tejipió, 222', '11133344434'),
                                (3, 'Heloisa', 33333333303, 'Cordeiro, 333', '11122255545'),
                                (4, 'Alderi', 44444444404, 'Boa vista, 444', '11122266656'),
                                (5, 'Fatima', 55555555505, 'Campo Grande, 555', '11133355545'),
                                (6, 'Neide', 66666666606, 'Casa Amarela, 666', '11122277767');

SELECT * FROM Veiculo;
INSERT INTO Veiculo VALUES 	(1, 1, 'PWX4845'),
							(2, 2, 'PFE5858'),
                            (3, 3, 'PGR9263'),
                            (4, 4, 'PEE6040'),
                            (5, 5, 'PDF1301'),
                            (6, 6, 'PVO0158');

SELECT * FROM Conserto;
INSERT INTO Conserto VALUES (1, 'NÃO DÁ PARTIDA'),
							(2, 'VIDRO ESQ TRAVADO'),
                            (3, 'LUZ DO MOTOR PISCANDO'),
                            (4, 'FUNAÇANDO'),
                            (5, 'PARABRISA PARALISADO'),
                            (6, 'EMBREAGEM SOLTA');
                            
SELECT * FROM Mecanico;
INSERT INTO Mecanico VALUES	(1, 'Elminho', 'Rua santos dummont', 'Eletricista'),
							(2, 'Cassio', 'Rua chico anizio', 'Borracharia'),
                            (3, 'Josué', 'Rua jo soares', 'Geral'),
                            (4, 'Gerson', 'Rua Hebe camargo', 'Funilaria'),
                            (5, 'Vavá', 'Rua pele', 'Geral'),
                            (6, 'Tadeu', 'Rua Jesus', 'MoFunilariator');

SELECT * FROM OdServiço;
INSERT INTO OdServiço VALUES 	(1, '2022/08/30', '480.87', '10.15', '491.02', 'CANCELADO', NULL),
								(2, '2022/09/06', '198.90', '80.90', '207.88', 'CONCLUIDO', '2022/09/09'),
								(3, '2022/08/25', '736.56', '7.50', '736.56', 'EM ANDAMENTO', NULL),
								(4, '2022/09/08', '134.50', '15.00', '149.50', 'AGUARDANDO', NULL),
								(5, '2022/08/18', '245.70', '110.90', '356.60', 'EM ANDAMENTO', NULL),
								(6, '2022/09/03', '930.99', '520.10', '930.99', 'CONCLUIDO', '2022/09/10');
                                
SELECT * FROM Autorização;
INSERT INTO Autorização VALUES 	(1, FALSE),
								(2, TRUE),
								(3, TRUE),
								(4, TRUE),
								(5, FALSE),
								(6, TRUE);
                                
SELECT * FROM Pecas;
INSERT INTO Pecas VALUES 	(1, 'Pneu', '10.15'),
							(2, 'Ar Condicionado', '7.50'),
							(3, 'Cambio', '520.10'),
							(3, 'Volante', '15.00'),
							(5, 'Caixa eletrica', '110.90'),
							(6, 'Pistão', '80.90');
                                
SELECT * FROM Serviços;
INSERT INTO Serviços VALUES 	(1, 'Problemas Eletricos', '134.50'),
								(2, 'Caixa de cambio quebrado', '198.90'),
								(3, 'Problemas Eletricos', '930.99'),
								(4, 'Peça proxima a caixa de direção danificada', '245.70'),
								(5, 'Pneu Furado', '480.87'),
								(6, 'O sistema de ar condicionado danificada', '736.56');

SELECT Autorização.Autorizado, OdServiço.idOdServiço, Clientes.idClientes
	FROM Autorização
    CROSS JOIN OdServiço, Clientes;