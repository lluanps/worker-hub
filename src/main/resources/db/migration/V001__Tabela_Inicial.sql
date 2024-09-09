CREATE TABLE IF NOT EXISTS usuario (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	sobrenome VARCHAR(50),
	email VARCHAR(100),
	senha VARCHAR(255),
	endereco VARCHAR(255),
	telefone VARCHAR(12),
	cargo VARCHAR(50),
	bio VARCHAR(255),
	ativo boolean DEFAULT FALSE,
	nao_bloqueado boolean DEFAULT TRUE,
	dupla_verificacao boolean DEFAULT FALSE,
	data_cadastro timestamp,
	image_url VARCHAR(255) DEFAULT 'https://w7.pngwing.com/pngs/906/222/png-transparent-computer-icons-user-profile-avatar-french-people-computer-network-heroes-black-thumbnail.png',
	CONSTRAINT UQ_usuario_email UNIQUE(email)
)
