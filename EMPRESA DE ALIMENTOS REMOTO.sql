CREATE TABLE produtos (
    ID INT PRIMARY KEY,
    Tipo_de_Comida VARCHAR(255),
    Prato VARCHAR(255),
    Preco FLOAT,
    Quantidade_em_Estoque INT
);

CREATE TABLE vendas_devolucoes (
    Prato VARCHAR(255),
    Data DATE,
    Lucro FLOAT
);

CREATE TABLE projecao_lucro (
    Data DATE,
    Prato VARCHAR(255),
    Lucro FLOAT
);


CREATE TABLE dados_preco (
    Prato VARCHAR(255),
    Data DATE,
    Preco FLOAT,
    Quantidade_Estoque INT
);
