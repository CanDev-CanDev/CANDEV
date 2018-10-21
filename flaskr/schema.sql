DROP TABLE IF EXISTS ServiceOntario;
DROP TABLE IF EXISTS IRCC;
DROP TABLE IF EXISTS ServiceCanada;

CREATE TABLE ServiceOntario (
    id INTEGER PRIMARY KEY,
    organization_addr TEXT NOT NULL,
    tel TEXT NOT NULL,
    email TEXT NOT NULL,
    open_hours TEXT NOT NULL,
    web_links TEXT NOT NULL,
    lable TEXT NOT NULL
);

CREATE TABLE IRCC (
    id INTEGER PRIMARY KEY,
    organization_addr TEXT NOT NULL,
    tel TEXT NOT NULL,
    email TEXT NOT NULL,
    open_hours TEXT NOT NULL,
    web_links TEXT NOT NULL,
    lable TEXT NOT NULL
);
CREATE TABLE ServiceCanada (
    id INTEGER PRIMARY KEY,
    organization_addr TEXT NOT NULL,
    tel TEXT NOT NULL,
    email TEXT NOT NULL,
    open_hours TEXT NOT NULL,
    web_links TEXT NOT NULL,
    lable TEXT NOT NULL
);

INSERT INTO IRCC(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (0,"212 lousi st", "1234567890","ircc@gov.ca","Mon:1-2 Tue:1-2 Wed:1-2","ircc.ca","federal");
INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (0,
"1255 The Queensway Unit16B, Etobicoke, ON M8Z 1S1",
"(416) 251-4941",
"gg@serviceOntario.ca",
"Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
"ontario.ca",
"provincial");

INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (1,
"2129 St Clair Ave W, Toronto, ON M6N 5B4",
"(416) 653-8690",
"gg@serviceOntario.ca",
"Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
"ontario.ca",
"provincial");

INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (2,
"846 Dundas St W, Toronto, ON M6J 1V5",
"+1 800-267-8097",
"gg@serviceOntario.ca",
"Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
"ontario.ca",
"provincial");

INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (3,
"3300 Bloor St W Suite 142, Etobicoke, ON M8X 2W8",
"+1 800-267-8097",
"gg@serviceOntario.ca",
"Saturday:Closed Sunday:Closed Monday:8:30a.m.–5p.m. Tuesday:8:30a.m.–5p.m. Wednesday:8:30a.m.–5p.m. Thursday:8:30a.m.–5p.m. Friday:8:30a.m.–5p.m.",
"ontario.ca",
"provincial");

INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (4,
"100 Steeles Ave W, Thornhill, ON L4J 7Y1",
"(905) 709-4097",
"gg@serviceOntario.ca",
"Sunday:Closed Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m. Saturday:9a.m.–1p.m.",
"ontariolicences.com",
"provincial");

INSERT INTO ServiceOntario(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (5,
"2880 Queen St E #8, Brampton, ON L6S 6C8",
"(905) 791-0046",
"gg@serviceOntario.ca",
"Sunday:Closed Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m. Saturday:9a.m.–1p.m.",
"ontario.ca",
"provincial");


INSERT INTO ServiceCanada(id,organization_addr,tel,email,open_hours,web_links,lable)
VALUES (0,West Humber Service Canada Centre 	2291 Kipling Avenue Toronto Ontario 	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures);

organization_name	location	open_hours
West Humber Service Canada Centre 	2291 Kipling Avenue Toronto Ontario 	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures
Gerrard Square Service Canada Centre 	 Gerrard Square Mall Floor 2	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures
College Street Service Canada Centre 	 559 College Street Suite 100 Toronto	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures
Lawrence Square Service Canada Centre 	 Lawrence Square Suite 103-105 700 Lawrence Avenue West Toronto	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures
 Willowdale Service Canada Centre 	 Joseph Shepard Building Floor 1 4900 Yonge Street North York	Monday to Friday from 8:30 am to 4:00 pm Upcoming holiday closures