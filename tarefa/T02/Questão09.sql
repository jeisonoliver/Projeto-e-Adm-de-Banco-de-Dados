INSERT INTO MILHAS (CODIGO, QUANTIDADE) VALUES (1,  1);

CREATE TRIGGER ADD_CARTAO AFTER
UPDATE ON CLIENTE
FOR EACH ROW 
INSERT INTO MILHAS (CODIGO, QUANTIDADE) VALUES (OLD.CODIGO, 0) ;

UPDATE CLIENTE
SET ENDERECO = "JARDIM DO SERIDÓ"
WHERE CLIENTE.CODIGO = 1;