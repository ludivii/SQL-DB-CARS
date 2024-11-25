USE carros;

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(100) NOT NULL,
    origem VARCHAR(100) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissão VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    
    PRIMARY KEY (id),
	FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereço VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO clientes (nome, sobrenome, endereço)
VALUES 
	('Luan', 'Dias', 'Rua 1'),
    ('Jose', 'Rodrigues', 'Rua 2'),
    ('Felipe', 'Silva', 'Rua 3'),
    ('Pedro', 'Santos', 'Rua 4'),
    ('Maria', 'Ferreira', 'Rua 5');

INSERT INTO marcas (nome_marca, origem)
VALUES 
	('Fiat', 'Italia'),
    ('Volkswagen', 'Alemanha'),
    ('Toyota', 'Japão'),
    ('Mercedes', 'Alemanha'),
    ('BMW', 'Alemanha');

INSERT INTO inventario (modelo, transmissão, motor, combustivel, marcas_id)
VALUES 
	('Mobi', 'Automática', '1.0 Fire Evo', 'gasolina', 1),
    ('T-Cross', 'Automática', '200 TSI', 'alcool', 2),
    ('Corolla Hybrid', 'Automática', '1.8 aspirado flex', 'Gasolina ou Etanol', 3),
    ('Mercedes-Benz', 'Automática', 'OM 471', 'Diesel', 4),
    ('BMW iX M60', 'Automática', 'BMW M xDrive', 'Gasolina', 5);
    