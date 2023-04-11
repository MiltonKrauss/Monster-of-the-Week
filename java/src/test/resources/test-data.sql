BEGIN TRANSACTION;

DROP TABLE IF EXISTS users_party;
DROP TABLE IF EXISTS party;
DROP TABLE IF EXISTS character;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS monster;



CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,


	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE monster (
	id SERIAL,
	name_index varchar(200) NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,

	CONSTRAINT PK_monster PRIMARY KEY (id)
);


CREATE TABLE character(
	id serial,
	name varchar(50) not null,
	char_class varchar(50) not null,
	race varchar(50) not null,
	description varchar(10000) not null,

	strength int,
	dexterity int,
	constitution int,
	intelligence int,
	wisdom int,
	charisma int,

	monster_id int not null,
	user_id int not null,

	constraint pk_character primary key (id),
	constraint fk_character_monster foreign key (monster_id) references monster (id),
	constraint fk_character_users foreign key (user_id) references users (user_id)
);

CREATE TABLE party (
	id serial,
	character_1 int NOT NULL,
	character_2 int NOT NULL,
	character_3 int NOT NULL,
	character_4 int NOT NULL,

	CHECK (character_1 != character_2),
	CHECK (character_1 != character_3),
	CHECK (character_1 != character_4),
	CHECK (character_2 != character_3),
	CHECK (character_2 != character_4),
	CHECK (character_3 != character_4),

	constraint fk_party_character_1 foreign key (character_1) references character (id),
	constraint fk_party_character_2 foreign key (character_2) references character (id),
	constraint fk_party_character_3 foreign key (character_3) references character (id),
	constraint fk_party_character_4 foreign key (character_4) references character (id),

	PRIMARY KEY (id)
);

CREATE TABLE users_party (
	user_id int NOT NULL,
	party_id int NOT NULL,

    PRIMARY KEY (user_id, party_id),
	constraint fk_users_party_user foreign key (user_id) references users (user_id),
	constraint fk_users_party_party foreign key (party_id) references party (id)
);

CREATE UNIQUE INDEX ON party (
	greatest(character_1,character_2,character_3,character_4),
	least(character_4,character_3,character_2,character_1)
);


INSERT INTO monster (name_index, start_date, end_date) VALUES ('a', '2020-01-01', '2020-01-07'); --id = 1
INSERT INTO monster (name_index, start_date, end_date) VALUES ('b', '2020-01-08', '2020-01-14'); --id = 2

INSERT INTO users (username,password_hash,role) VALUES ('user1','user1','ROLE_USER');--id = 1
INSERT INTO users (username,password_hash,role) VALUES ('user2','user2','ROLE_USER');--id = 2
INSERT INTO users (username,password_hash,role) VALUES ('user3','user3','ROLE_USER');--id = 3
INSERT INTO users (username,password_hash,role) VALUES ('user4','user4','ROLE_USER');--id = 4

--insert four characters for monster a
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
 intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 1, 1);--id = 1
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
 intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 1, 2);--id = 2
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
 intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 1, 3);--id = 3
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
 intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 1, 4);--id = 4

INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
  intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 2, 1);--id = 5
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
   intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 2, 2);--id = 6
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
  intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 2, 3);--id = 7
INSERT INTO character (name, race, description, char_class, strength, dexterity, constitution,
   intelligence, wisdom, charisma, monster_id, user_id) VALUES ('b', 'c', 'd', 'e', 1, 1, 1, 1, 1, 1, 2, 4);--id = 8

INSERT INTO party (character_1, character_2, character_3, character_4) VALUES (1,2,3,4);

COMMIT TRANSACTION;


