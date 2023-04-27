BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('sJtOeHvNe','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 1
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN'); --id 2
INSERT INTO users (username,password_hash,role) VALUES ('cmdShepard','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MOD'); --id 3
INSERT INTO users (username,password_hash,role) VALUES ('blueScadoo','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 4
INSERT INTO users (username,password_hash,role) VALUES ('elfpuncher','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 5
INSERT INTO users (username,password_hash,role) VALUES ('DobbyTheElf','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 6
INSERT INTO users (username,password_hash,role) VALUES ('BoatyMcBoatface','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 7
INSERT INTO users (username,password_hash,role) VALUES ('juggerN0T','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 8
INSERT INTO users (username,password_hash,role) VALUES ('four_letter_word','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --id 9
INSERT INTO users (username,password_hash,role) VALUES ('Aragorn','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_MOD'); --id 9

INSERT INTO monster (name_index, start_date, end_date) VALUES ('monster','2020-01-01','2020-01-07'); --id 1
INSERT INTO monster (name_index, start_date, end_date) VALUES ('monstar','2020-01-08','2020-01-14'); --id 2
INSERT INTO monster (name_index, start_date, end_date) VALUES ('aboleth','2023-04-09','2023-04-15'); --id 3
INSERT INTO monster (name_index, start_date, end_date) VALUES ('adult-black-dragon','2023-04-16','2029-04-22'); --id 4
INSERT INTO monster (name_index, start_date, end_date) VALUES ('adult-black-dragon','2023-04-02','2023-04-08'); --id 5

INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681825649/Default_mypuwg.jpg',true); --id 1
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681779003/characters/mmdfce3kthsbclqflhwe.webp',true); --id 2 Jet
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681781030/characters/lfkashsnp01mkiqlrwte.webp',true); --id 3 Ba
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681846837/characters/Dragonborn_vn12k7.webp',true); --id 4 Keen
INSERT INTO image (url) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681696814/characters/jplasiut6zad0ri9h4v9.jpg'); --id 5 Fig
INSERT INTO image (url) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681847442/characters/torbjorn_bnliyb.jpg'); --id 6 Toblerone
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681910809/Ben_zgfgwe.jpg', true); --id 7 Bee
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681912552/milhouse_xfmss1.png', true); --id 8 Mil
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681917309/katara_gwix87.jpg', true); --id 9 Kay
INSERT INTO image (url,approved) VALUES ('https://res.cloudinary.com/c19-lima-monster-of-the-week/image/upload/v1681920065/Wizzard_c8yhku.webp', true); --id 10 Al

INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, flagged_inappropriate, image_id)
	VALUES ('Jet', 'Fighter', 'Elf',
	'Learned the magic of ocean creatures and utilizes that power in his fighting style. Grew up working for his fathers criminal organization, drawing in merchant ships with Siren collaborators and salvaging the goods from the ensuing wreckage. He hass been recovering from a bad personality ever since.',
	 18,17,15,12,13,14, 4,1, 'flagged', 2); --id 1
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Ba', 'Wizard', 'Dwarf', 'Eats rocks. Tamed a basalisk to make more rocks to eat.', 14,18,16,15,12,13, 4,2, 3); --id 2
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id)
	VALUES ('Lyfet', 'Rogue', 'Elf', 'Do not trust him', 13,14,18,16,15,12, 4,3); --id 3
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Keen', 'Fighter', 'Dragonborn',
	'An orphan who worked his way up through the ranks of his countrys military. Now counsels the queen in matters of war. He once speared a dragon to the ground by pinning it its tail with a spear.',
	12,13,14,18,16,15, 4,4, 4); --id 4
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id)
	VALUES ('Teg', 'Fighter', 'Elf', 'Floats', 15,12,13,14,18,16, 4,5); --id 5
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id)
	VALUES ('Zic', 'Paladin', 'Dwarf', 'Unicorn Blood', 16,15,12,13,14,18, 4,6); --id 6
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Fig', 'Fighter', 'Gnome', 'Loves eating', 10,10,10,10,10,10, 4,7, 5); --id 7
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Toblerone', 'Rogue', 'Dwarf',
	'Builds machines to fight for him. Legally distinct from any Swedish citizen vigilantes you may be thinking of.',
	10,10,10,10,10,10, 4,8, 6); --id 8
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id)
	VALUES ('Reinhardt', 'Monk', 'Elf',
	'A knight reaching the end of a very long life. While still committed to protecting the royal family, he has begun to spend time working with the citizens of the Moonsong Kingdom to ensure those without power are not forgotten.',
	10,10,10,10,10,10, 4,9); --id 9
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Kay', 'Monk', 'Human', 'She punches people.', 10,10,10,10,10,10, 3,9, 9); --id 10
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Mil', 'Barbarian', 'Elf', 'He yells at people.', 10,10,10,10,10,10, 3,6, 8); --id 11
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Bee', 'Fighter', 'Dwarf', 'He stabs people.', 10,10,10,10,10,10, 3,3, 7); --id 12
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, image_id)
	VALUES ('Al', 'Wizard', 'Dragon Born', 'He curses people.', 10,10,10,10,10,10, 3,2, 10); --id 13
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, flagged_inappropriate)
	VALUES ('Tim', 'Wizard', 'Human', 'He does magic against people.', 10,10,10,10,10,10, 4,7, 'flagged'); --id 14
INSERT INTO character (name, char_class, race, description, strength, dexterity, constitution, intelligence, wisdom, charisma, monster_id, user_id, flagged_inappropriate)
	VALUES ('George', 'Bard', 'Halfling', 'His music is awful.', 10,10,10,10,10,10, 3,1, 'flagged'); --id 15
	
	
	
INSERT INTO party (character_1, character_2, character_3, character_4) VALUES (1,2,3,4); --id 1 monster 4
INSERT INTO party (character_1, character_2, character_3, character_4) VALUES (2,4,5,7); --id 2 monster 4
INSERT INTO party (character_1, character_2, character_3, character_4) VALUES (3,4,5,7); --id 3 monster 4
INSERT INTO party (character_1, character_2, character_3, character_4) VALUES (10,11,12,13); --id 4 monster 3



INSERT INTO users_party (user_id,party_id) VALUES (4,1); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (5,2); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (6,1); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (7,3); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (8,3); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (9,1); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (3,1); --monster 4
INSERT INTO users_party (user_id,party_id) VALUES (1,4); --monster 3


COMMIT TRANSACTION;