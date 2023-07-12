-- Deve dar erro que já existe uma insígnia com esse nome
INSERT INTO insignia (nome) VALUES ('Insígnia Psychics');

-- Deve dar erro que não existe essa cidade
INSERT INTO treinador (url,nome,id_Cidade,id_Classe) 
VALUES ('http://www.serebii.net/pokearth/trainers/dp/14.png','Apresentação 1','Juiz de Fora','Comum');


-- Funcionando para mostrar as triggers funcionando
INSERT INTO treinador (url,nome,id_Cidade,id_Classe) 
VALUES ('http://www.serebii.net/pokearth/trainers/dp/14.png','Apresentação 2','Pallet Town','Comum');

