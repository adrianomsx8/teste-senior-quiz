CREATE TABLE perguntas (
	id serial PRIMARY KEY,
	questao VARCHAR ( 255 )  NOT NULL
);


CREATE TABLE alternativas (
	id serial PRIMARY KEY,
	resposta VARCHAR ( 255 )  NOT null,
	pergunta_id INT, --fk da tabela de perguntas
	valor_resposta BOOLEAN -- Indetificar a resposta correta
);


ALTER TABLE alternativas
    ADD CONSTRAINT fk_pergunta_alternativas FOREIGN KEY (pergunta) REFERENCES perguntas (id);
   
   
 -- criar perguntas  
 INSERT INTO public.perguntas(questao) VALUES ('Pergunta 1');
 INSERT INTO public.perguntas(questao) VALUES ('Pergunta 2');
 INSERT INTO public.perguntas(questao) VALUES ('Pergunta 3');

--criar alternativas

INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 1', 1, 0);

INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 2', 1, 0);
	
INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 3', 1, 1); --resposta certa
	
	
-----------------------------------------
	INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 1', 2, 0);

INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 2', 2, 0);
	
INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 3',2, 1); -- resposta certa
	
--------------------------------------------------	

INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 1', 3, 0);

INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 2', 3, 0);
	
INSERT INTO public.alternativas(
	 resposta, pergunta, valor_resposta)
	VALUES ('ALternativa 3',3, 1); -- resposta certa
	

--consulta randomica
SELECT id, questao FROM perguntas ORDER BY random() LIMIT 5



