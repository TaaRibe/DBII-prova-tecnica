CREATE DATABASE avaliacao;
USE avaliacao;

CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
id_fornecedor int,
nome VARCHAR(255),
preco DECIMAL,
quantidadeEstoque DOUBLE
);

CREATE TABLE fornecedores(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
CNPJ BOOLEAN,
telefone VARCHAR(20),
CPF BOOLEAN
);

CREATE TABLE colaboradores(
id_colaboradores INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cargo VARCHAR(255),
salario DECIMAL
);

CREATE TABLE pedidos(
id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
dataPedido date,
id_funcionario int,
id_produto int
);

ALTER TABLE produtos add foreign key (id_fornecedor) references fornecedores(id_fornecedor);

select * from produtos;

ALTER TABLE fornecedores ADD COLUMN email varchar(255);

CREATE TABLE categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(255)
);

ALTER TABLE produtos ADD COLUMN id_categoria int;
ALTER TABLE produtos add foreign key (id_categoria) references categorias(id_categoria);





