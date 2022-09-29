INSERT INTO players (name,email,password) VALUES ("Adam","adamP@gmail.com","123");
INSERT INTO players (name,email,password) VALUES ("Rafał","rafal2@gmail.com","456");
INSERT INTO players (name,email.password) VALUES ("Jacek","Jacekszef@wp.pl","789aaa");
INSERT INTO players (name,email.password) VALUES ("Pawel","paweltu@wp.pl","dergaaa");

INSERT INTO resources (name, description) VALUES ("drewno","pali sie");
INSERT INTO resources (name, description) VALUES ("glina","jest szara");
INSERT INTO resources (name, description) VALUES ("żelazo","błyszczy sie");

INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("łucznik","strzela","1","15","5");
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("miecznik","ora pole","10","0","10");
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("kusznik","bełtuje","3","30","15");
INSERT INTO troops (name, description, damage, distance_damage, defence) VALUES ("rycerz","ora pole lepiej","20","15","25");

INSERT INTO buildings (name) VALUES ("doł z gliny");
INSERT INTO buildings (name) VALUES ("huta żelaza");
INSERT INTO buildings (name) VALUES ("chata drwala");

SELECT resources.name,villages_has_resources.value FROM players
JOIN villages ON players.id=villages.players_id
JOIN villages_has_resources ON villages.id=villages_has_resources.villages_id
JOIN resources ON villages_has_resources.resources_id=resources.id;

SELECT players.nick FROM players WHERE players.email="adamP@gmail.com" AND players.password="123";
SELECT players.email,players.password FROM players WHERE players.password!=null and players.email!=null;

SELECT troops.name FROM players
JOIN villages ON players.id=villages.players_id
JOIN villages_has_troops ON villages_id=villages_has_troops.villages_id
JOIN troops ON villages_has_troops.troops_id=troops.id
WHERE players.id="0";

SELECT buildings.name FROM players 
JOIN villages ON players.id=villages.players_id
JOIN villages_has_buildings ON villages.id=villages_has_buildings.villages_id
JOIN buildings  ON villages_has_buildings.buildings_id=buildings.id
WHERE players.id="2" and villages.id="0";
