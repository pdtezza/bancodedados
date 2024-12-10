# bancodedados
1. Tabelacliente
•	Representa informações dos clientes.
•	Atributos:
o	id (BIGINT)- Eu ia
o	cpf (VARCHAR(255))– C
o	endereco (VARCHAR(255))– Endereço do
o	nome (VARCHAR(255))–
•	Observação:O CPF está definidoVARCHAR(255),CHAR(11)ouVARCHAR(14)(eu

2. Tabelagerente
•	Representante
•	Atributos:
o	id (BIGINT)- EU
o	endereco (VARCHAR(255))–
o	nome (VARCHAR(255))– Nome completo do

3. Tabelamotoboy
•	Armazena informações sobre motoboys.
•	Atributos:
o	id (BIGINT)- EU
o	cpf (VARCHAR(255))–
o	endereco (VARCHAR(255))– Endereço
o	nome (VARCHAR(255))– Nome
o	status (INT)– Indica
•	Observação: Ostatusvagem


4. Tabela dishes(ou pratos)
•	Representa os pratos disponíveis no sistema.
•	Atributos:
o	id (BIGINT)–
o	category (VARCHAR(255))– Ca
o	description (VARCHAR(255))– E
o	image (VARCHAR(255))– URL o
o	name (VARCHAR(255))– Nome do
o	price (DOUBLE)– Preço do prato
o	stock (INT)–
•	Observação: O campopricepoDECIMAL(10,2)por favor

5. Tabelapedidos
•	Cadastre informações sobre os pedidos feitos pelos clientes.
•	Atributos:
o	id (BIGINT)– Identificador
o	data (VARCHAR(255))–DATETIMEpára
o	observacao (VARCHAR(255))– O
o	preco_total (DOUBLE)–
o	status (VARCHAR(255))–
o	tempo_estimado (INT)–
o	cliente_id (BIGINT)– Relacionado o
o	motoboy_id (BIGINT)– Rel
•	Chaves Estrangeiras:
o	cliente_idrécliente(id).
o	motoboy_idrefere-se a `motoboy(id).


6. Tabelapedido_pratos
•	Representa o relacionamento entre pedidos e pratos, pois um pedido pode conter vários pratos e um prato pode estar em vários pedidos.
•	Atributos:
o	pedido_id (BIGINT)– Referir
o	prato_id (BIGINT)– Referência
•	Chaves Primárias:
o	Combinação de pedido_ide `prato_id.
•	Chaves Estrangeiras:
o	pedido_idreferênciapedidos(id).
o	prato_idrdishes(id).

Relacionamentos no Modelo
1.	Um cliente pode fazer vários pedidos :
o	Relacionamento 1:Nentreclientee pedidos.
2.	Um pedido pode incluir vários pratos:
o	Relacionamento N:Nentre `pedpedidosedishes,pedido_pratos.
3.	Um motoboy pode ser designado para vários pedidos:
o	Relacionamento 1:Nentremotoboye `pedidos.

