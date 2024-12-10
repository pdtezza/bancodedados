-- Criação da tabela Cliente
CREATE TABLE cliente (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(255) NOT NULL UNIQUE,
    endereco VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Gerente
CREATE TABLE gerente (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Motoboy
CREATE TABLE motoboy (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(255) NOT NULL UNIQUE,
    endereco VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    status INT DEFAULT 1, -- Status padrão: ativo
);

-- Criação da tabela Dishes (Pratos)
CREATE TABLE dishes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    image VARCHAR(255),
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    stock INT NOT NULL CHECK (stock >= 0),-- Estoque não pode ser negativo
);

-- Criação da tabela Pedidos
CREATE TABLE pedidos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Data padrão: horário atual
    observacao VARCHAR(255),
    preco_total DOUBLE NOT NULL CHECK (preco_total >= 0), -- Total deve ser >= 0
    status VARCHAR(255) NOT NULL DEFAULT 'Pendente', -- Status inicial padrão
    tempo_estimado INT, -- Tempo em minutos
    cliente_id BIGINT NOT NULL,
    motoboy_id BIGINT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id) ON DELETE CASCADE,
    FOREIGN KEY (motoboy_id) REFERENCES motoboy(id) ON DELETE SET NULL,
);

-- Criação da tabela Pedido_Pratos (associação entre pedidos e pratos)
CREATE TABLE pedido_pratos (
    pedido_id BIGINT NOT NULL,
    prato_id BIGINT NOT NULL,
    PRIMARY KEY (pedido_id, prato_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (prato_id) REFERENCES dishes(id) ON DELETE CASCADE,
);


