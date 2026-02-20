-- Insert statements for each country with its country code and total medals
INSERT INTO Country (country_name, country_code, total_medals) VALUES
("People's Republic of China", 'CHN', 207),
('Great Britain', 'GBR', 124),
('United States of America', 'USA', 104),
('RPC', 'RPC', 118),
('Netherlands', 'NED', 59),
('Ukraine', 'UKR', 98),
('Brazil', 'BRA', 72),
('Australia', 'AUS', 80),
('Italy', 'ITA', 69),
('Azerbaijan', 'AZE', 19),
('Japan', 'JPN', 51),
('Germany', 'GER', 43),
('Islamic Republic of Iran', 'IRI', 24),
('France', 'FRA', 54),
('Spain', 'ESP', 36),
('Uzbekistan', 'UZB', 19),
('Poland', 'POL', 25),
('Hungary', 'HUN', 16),
('Switzerland', 'SUI', 14),
('Mexico', 'MEX', 22),
('New Zealand', 'NZL', 12),
('Canada', 'CAN', 21),
('India', 'IND', 19),
('Thailand', 'THA', 18),
('Slovakia', 'SVK', 11),
('Belarus', 'BLR', 7),
('Tunisia', 'TUN', 11),
('Algeria', 'ALG', 12),
('Morocco', 'MAR', 11),
('Belgium', 'BEL', 15),
('Ireland', 'IRL', 7),
('Nigeria', 'NGR', 10),
('South Africa', 'RSA', 7),
('Cuba', 'CUB', 6),
('Jordan', 'JOR', 5),
('Colombia', 'COL', 24),
('Venezuela', 'VEN', 7),
('Malaysia', 'MAS', 5),
('Denmark', 'DEN', 5),
('Republic of Korea', 'KOR', 24),
('Turkey', 'TUR', 15),
('Indonesia', 'INA', 9),
('Czech Republic', 'CZE', 8),
('Chile', 'CHI', 6),
('Serbia', 'SRB', 6),
('Norway', 'NOR', 4),
('Singapore', 'SGP', 2),
('Austria', 'AUT', 9),
('Sweden', 'SWE', 8),
('Greece', 'GRE', 11),
('Finland', 'FIN', 5),
('Kazakhstan', 'KAZ', 5),
('United Arab Emirates', 'UAE', 3),
('Costa Rica', 'CRC', 2),
('Ecuador', 'ECU', 3),
('Cyprus', 'CYP', 2),
('Sri Lanka', 'SRI', 2),
('Ethiopia', 'ETH', 1),
('Mongolia', 'MGL', 1),
('Pakistan', 'PAK', 1),
('Peru', 'PER', 1),
('Argentina', 'ARG', 9),
('Egypt', 'EGY', 7),
('Croatia', 'CRO', 7),
('Latvia', 'LAT', 5),
('Georgia', 'GEO', 3),
('Hong Kong, China', 'HKG', 5), 
('Bulgaria', 'BUL', 2),
('Iraq', 'IRQ', 3),
('Kuwait', 'KUW', 2),
('Namibia', 'NAM', 2),
('Romania', 'ROU', 2),
('Slovenia', 'SLO', 2),
('Vietnam', 'VIE', 1),
('Lithuania', 'LTU', 3),
('Portugal', 'POR', 2),
('Bosnia and Herzegovina', 'BIH', 1),
('El Salvador', 'ESA', 1),
('Kenya', 'KEN', 1),
('Saudi Arabia', 'KSA', 1),
('Montenegro', 'MNE', 1),
('Oman', 'OMA', 1),
('Qatar', 'QAT', 1),
('Chinese Taipei', 'TPE', 1),
('Uganda', 'UGA', 1);

-- Insert statements for each unique discipline with its discipline code
INSERT INTO Discipline(discipline_code, discipline_name) VALUES
('JUD', 'Judo'),
('SWM', 'Swimming'),
('WBK', 'Wheelchair Basketball'),
('VBS', 'Sitting Volleyball'),
('PWL', 'Powerlifting'),
('ATH', 'Athletics'),
('CSP', 'Canoe Sprint'),
('WFE', 'Wheelchair Fencing'),
('TKW', 'Taekwondo'),
('CRD', 'Cycling Road'),
('CTR', 'Cycling Track'),
('TTE', 'Table Tennis'),
('FB5', 'Football 5-a-side'),
('TRI', 'Triathlon'),
('EQU', 'Equestrian'),
('BOC', 'Boccia'),
('GBL', 'Goalball'),
('ARC', 'Archery'),
('SHO', 'Shooting'),
('ROW', 'Rowing'),
('WTE', 'Wheelchair Tennis'),
('WRU', 'Wheelchair Rugby'),
('BDM', 'Badminton');

-- Insert statements for Athlete sample data
INSERT INTO Athlete (name, gender, birth_date, birth_place, birth_country, sport_class, country_code, discipline_code)
VALUES
("AAJIM Munkhbat", "Male", "1989-01-25", 
     NULL, 
     NULL, 
     "B3", "MGL", "JUD"), 
     ("ABARZA Alberto", "Male", "1984-12-11", 
     "SANTIAGO", 
     "Chile", 
     "S2", "CHI", "SWM"), 
     ("ABASLI Namig", "Male", "1997-09-12", 
     NULL, 
     NULL, 
     "B2", "AZE", "JUD"), 
     ("ABASSI Mostefa", "Male", "1977-09-25", 
     "DJELFA", 
     "Algeria", 
     "2.5", "ALG", "WBK"), 
     ("ABBAD Abderraouf", "Male", "1986-10-27", 
     "ROUIBA", 
     "Algeria", 
     "1.0", "ALG", "WBK"), 
     ("ABDALLA Ashraf", "Male", "1974-02-24", 
     "AL FAYYUM", 
     "Egypt", 
     "VS1", "EGY", "VBS"), 
     ("ABDELALI Samiha", "Female", "1988-04-25", 
     "OUARGLA", 
     "Algeria", 
     "2.5", "ALG", "WBK"), 
     ("ABDELAZIZ Gihan", "Female", "1974-10-29", 
     "GIZA", 
     "Egypt", 
     "PWL", "EGY", "PWL"), 
     ("ABDELHADY Hany", "Male", "1980-05-19", 
     "CAIRO", 
     "Egypt", 
     "PWL", "EGY", "PWL"), 
     ("ABDELLAOUI Cherine", "Female", "1998-08-28", 
     NULL, 
     NULL, 
     "B3", "ALG", "JUD"), 
     ("ABDELLATIF Abdelnaby", "Male", "1972-06-18", 
     NULL, 
     NULL, 
     "VS1", "EGY", "VBS"), 
     ("ABDELLI Rima", "Female", "1988-02-24", 
     "MADANIN", 
     "Tunisia", 
     "F40", "TUN", "ATH"), 
     ("ABDELMAJID Taha", "Male", "1987-06-08", 
     NULL, 
     "Egypt", 
     "PWL", "EGY", "PWL"), 
     ("ABDELSHAFI Malak", "Female", "2003-03-11", 
     "CAIRO", 
     "Egypt", 
     "SB4", "EGY", "SWM"), 
     ("ABDI Hassan", "Male", "1985-11-22", 
     "MASHHAD", 
     "Islamic Republic of Iran", 
     "2.0", "IRI", "WBK"), 
     ("ABDULKHABIBOV Azizbek", "Male", "1993-12-16", 
     NULL, 
     "Uzbekistan", 
     "KL2", "UZB", "CSP"), 
     ("ABDULLAKHANLI Kanan", "Male", "1987-07-02", 
     NULL, 
     "Azerbaijan", 
     "B3", "AZE", "JUD"), 
     ("ABDULRAHEEM Kovan", "Male", "1988-03-01", 
     "DUHOK", 
     "Iraq", 
     "F41", "IRQ", "ATH"), 
     ("ABDYKHALYKOVA Gulbanu", "Female", "1972-09-15", 
     "TALDYKORGAN", 
     "Kazakhstan", 
     "PWL", "KAZ", "PWL"), 
     ("ABE Chisato", "Female", "1978-10-25", 
     "TAKAMATSU", 
     "Japan", 
     "B", "JPN", "WFE"), 
     ("ABIDOGUN Ola", "Male", "1993-08-03", 
     "ILFORD", 
     "Great Britain", 
     "T47", "GBR", "ATH"), 
     ("ABILKHASSYMKYZY Saltanat", "Female", "2000-01-14", 
     "TARAZ", 
     "Kazakhstan", 
     "T35", "KAZ", "ATH"), 
     ("ABLINGER Walter", "Male", "1969-05-12", 
     "SCHARDING", 
     "Austria", 
     "H3", "AUT", "CRD"), 
     ("ABOHEGAZY Salma", "Female", "2003-04-10", 
     NULL, 
     NULL, 
     "K44", "EGY", "TKW"), 
     ("ABOUELKHIR Metawa", "Male", "1976-10-20", 
     "KAFR ASH SHAYKH", 
     "Egypt", 
     "VS1", "EGY", "VBS"), 
     ("ABOUELYAZEID Mohamed", "Male", "1979-03-29", 
     NULL, 
     NULL, 
     "VS1", "EGY", "VBS"), 
     ("ABRAHAM de DEUS Michel Gustavo", "Male", "1997-11-03", 
     "MAUA", 
     "Brazil", 
     "T46", "BRA", "ATH"), 
     ("ABRAHAM GEBRU Daniel", "Male", "1985-02-11", 
     NULL, 
     "Eritrea", 
     "C5", "NED", "CRD"), 
     ("ABRAHAM GEBRU Daniel", "Male", "1985-02-11", 
     NULL, 
     "Eritrea", 
     "C5", "NED", "CTR"), 
     ("ABRAHAMS David Henry", "Male", "2001-05-03", 
     NULL, 
     NULL, 
     "S13,SB13,SM13", "USA", "SWM"), 
     ("ABU AWAD Khetam", "Female", "1974-10-08", 
     "AZ ZARQA", 
     "Jordan", 
     "5", "JOR", "TTE"), 
     ("ABUZARLI Abulfaz", "Male", "1991-08-04", 
     "BAKU", 
     "Azerbaijan", 
     "K44", "AZE", "TKW"), 
     ("ACAR Deniz", "Male", "1976-01-09", 
     "AYDIN", 
     "Turkey", 
     "2.5", "TUR", "WBK"), 
     ("ACCARDI Federico", "Male", "1989-06-26", 
     "MENDOZA", 
     "Argentina", 
     "B1", "ARG", "FB5"), 
     ("ACEITUNO Herbert", "Male", "1985-11-01", 
     "SAN SALVADOR", 
     "El Salvador", 
     "PWL", "ESA", "PWL"), 
     ("ACEVES PEREZ Haidee Viviana", "Female", "1993-03-23", 
     "GUADALAJARA", 
     "Mexico", 
     "S3", "MEX", "SWM"), 
     ("ACHENZA Giovanni", "Male", "1971-07-31", 
     "OZIERI", 
     "Italy", 
     "PTWC1", "ITA", "TRI"), 
     ("ACOSTA MANJARRES Yamil David", "Male", "1997-10-17", 
     "RIOHACHA", 
     "Colombia", 
     "T12", "COL", "ATH"), 
     ("ACOSTA RODRIGUEZ Adolfo", "Male", "1981-05-19", 
     "LAS PALMAS DE GRAN CANARIA", 
     "Spain", 
     "B1", "ESP", "FB5"), 
     ("ACOSTA SOTO Omar Jose", "Male", "2000-05-18", 
     "CARTAGENA", 
     "Colombia", 
     "T36", "COL", "ATH"), 
     ("ADAMI Zsanett", "Female", "1994-12-20", 
     "BUDAPEST", 
     "Hungary", 
     "S2", "HUN", "SWM"), 
     ("ADAMS Lisa", "Female", "1990-11-18", 
     "ROTORUA", 
     "New Zealand", 
     "F37", "NZL", "ATH"), 
     ("ADDESI Pierpaolo", "Male", "1976-06-29", 
     "MARIANO COMENSE", 
     "Italy", 
     "C5", "ITA", "CRD"), 
     ("ADDISON Tamsin", "Female", "1973-02-05", 
     NULL, 
     "Great Britain", 
     "GV", "IRL", "EQU"), 
     ("ADENEGAN Kare", "Female", "2000-12-29", 
     "COVENTRY", 
     "Great Britain", 
     "T34", "GBR", "ATH"), 
     ("ADESOKAN Yakubu", "Male", "1979-07-16", 
     "IBADAN", 
     "Nigeria", 
     "PWL", "NGR", "PWL"), 
     ("ADLER Anja", "Female", "1989-04-14", 
     "HALLE", 
     "Germany", 
     "KL2", "GER", "CSP"), 
     ("ADOLPHE Timothee", "Male", "1989-12-29", 
     "VERSAILLES", 
     "France", 
     "T11", "FRA", "ATH"), 
     ("ADONINA Daria", "Female", "2002-11-13", 
     NULL, 
     NULL, 
     "BC4", "RPC", "BOC"), 
     ("ADZHAMETOVA Leilia", "Female", "1994-03-09", 
     NULL, 
     "Uzbekistan", 
     "T13", "UKR", "ATH"), 
     ("AERE Katia", "Female", "1971-08-28", 
     NULL, 
     NULL, 
     "H5", "ITA", "CRD"), 
     ("AFRI Mahdi", "Male", "1996-01-01", 
     NULL, 
     NULL, 
     "T12", "MAR", "ATH"), 
     ("AFROOZ Saeid", "Male", "1990-12-13", 
     "JIROFT", 
     "Islamic Republic of Iran", 
     "F34", "IRI", "ATH"), 
     ("AGALAKOV Roman", "Male", "1995-01-09", 
     "KONAKOVO", 
     "Russian Federation", 
     "S13", "KAZ", "SWM"), 
     ("AGBLEMAGNON Gloria", "Female", "1997-12-10", 
     "VIERZON", 
     "France", 
     "F20", "FRA", "ATH"),
     ("AGRIPINO dos SANTOS Julio Cesar", "Male", "1991-01-17", 
     "DIADEMA", 
     "Brazil", 
     "T11", "BRA", "ATH");

-- Inserting sample data to Participation
INSERT INTO Participation (athlete_id, event) VALUES
(1, 'Men\'s Judo 60kg'),
(2, 'Men\'s 100m Freestyle S2'),
(3, 'Men\'s Judo 66kg'),
(4, 'Men\'s Wheelchair Basketball'),
(5, 'Men\'s Wheelchair Basketball'),
(6, 'Men\'s Volleyball Sitting'),
(7, 'Women\'s Wheelchair Basketball'),
(8, 'Women\'s Powerlifting -49kg'),
(9, 'Men\'s Powerlifting -65kg'),
(10, 'Women\'s Judo 48kg'),
(11, 'Men\'s Volleyball Sitting'),
(12, 'Women\'s Shot Put F40'),
(13, 'Men\'s Powerlifting -88kg'),
(14, 'Women\'s 100m Backstroke S5'),
(15, 'Men\'s Wheelchair Basketball'),
(16, 'Men\'s Canoe Sprint KL2'),
(17, 'Men\'s Judo 73kg'),
(18, 'Men\'s Shot Put F41'),
(19, 'Women\'s Powerlifting -73kg'),
(20, 'Women\'s Weightlifting 49kg'),
(21, 'Men\'s 100m T47'),
(22, 'Women\'s 200m T35'),
(23, 'Men\'s Handcycling H3'),
(24, 'Women\'s Taekwondo K44'),
(25, 'Men\'s Volleyball Sitting'),
(26, 'Men\'s Volleyball Sitting'),
(27, 'Men\'s 400m T46'),
(28, 'Men\'s Road Cycling C5'),
(29, 'Men\'s Track Cycling C5'),
(30, 'Men\'s 100m Freestyle S13'),
(31, "Women's Table Tennis Class 5"),
(32, 'Men\'s Taekwondo K44'),
(33, 'Men\'s Wheelchair Basketball'),
(34, 'Men\'s Football 5-a-side'),
(35, 'Men\'s Powerlifting -59kg'),
(36, 'Women\'s 50m Freestyle S3'),
(37, 'Men\'s Triathlon PTWC1'),
(38, 'Men\'s 100m T12'),
(39, 'Men\'s Football 5-a-side'),
(40, 'Men\'s 200m T36'),
(41, 'Women\'s 100m Backstroke S2'),
(42, 'Women\'s Shot Put F37'),
(43, 'Men\'s Road Cycling C5'),
(44, 'Women\'s Individual Dressage Test'),
(45, 'Women\'s 100m T34'),
(46, 'Men\'s Powerlifting -49kg'),
(47, 'Men\'s Canoe Sprint KL2'),
(48, 'Men\'s 100m T11'),
(49, 'Women\'s Boccia BC4'),
(50, 'Women\'s 100m T13'),
(51, 'Women\'s Road Cycling H5'),
(52, 'Men\'s 1500m T12'),
(53, 'Men\'s Shot Put F34'),
(54, 'Men\'s 100m Freestyle S13'),
(55, 'Women\'s Shot Put F20'),
(56, "Mens 200m T11");

-- Inserting sample data Medals
INSERT INTO Medals (medal_id, medal_type, medal_date, event, participation_id) VALUES
(1, 'Gold', '2021-08-25', "Men's Judo 60kg", 1),
(2, 'Silver', '2021-08-26', "Men's 100m Freestyle S2", 2),
(3, 'Bronze', '2021-08-27', "Men's Judo 66kg", 3),
(4, 'Gold', '2021-08-28', "Men's Wheelchair Basketball", 4),
(5, 'Silver', '2021-08-29', "Men's Wheelchair Basketball", 5),
(6, 'Bronze', '2021-08-25', "Men's Volleyball Sitting", 6),
(7, 'Gold', '2021-08-26', "Women's Wheelchair Basketball", 7),
(8, 'Silver', '2021-08-27', "Women's Powerlifting -49kg", 8),
(9, 'Bronze', '2021-08-28', "Men's Powerlifting -65kg", 9),
(10, 'Gold', '2021-08-29', "Women's Judo 48kg", 10),
(11, 'Silver', '2021-08-25', "Men's Volleyball Sitting", 11),
(12, 'Bronze', '2021-08-26', "Women's Shot Put F40", 12),
(13, 'Gold', '2021-08-27', "Men's Powerlifting -88kg", 13),
(14, 'Silver', '2021-08-28', "Women's 100m Backstroke S5", 14),
(15, 'Bronze', '2021-08-29', "Men's Wheelchair Basketball", 15),
(16, 'Gold', '2021-08-25', "Men's Canoe Sprint KL2", 16),
(17, 'Silver', '2021-08-26', "Men's Judo 73kg", 17),
(18, 'Bronze', '2021-08-27', "Men's Shot Put F41", 18),
(19, 'Gold', '2021-08-28', "Women's Powerlifting -73kg", 19),
(20, 'Silver', '2021-08-29', "Women's Weightlifting 49kg", 20),
(21, 'Bronze', '2021-08-25', "Men's 100m T47", 21),
(22, 'Gold', '2021-08-26', "Women's 200m T35", 22),
(23, 'Silver', '2021-08-27', "Men's Handcycling H3", 23),
(24, 'Bronze', '2021-08-28', "Women's Taekwondo K44", 24),
(25, 'Gold', '2021-08-29', "Men's Volleyball Sitting", 25),
(26, 'Silver', '2021-08-25', "Men's Volleyball Sitting", 26),
(27, 'Bronze', '2021-08-26', "Men's 400m T46", 27),
(28, 'Gold', '2021-08-27', "Men's Road Cycling C5", 28),
(29, 'Silver', '2021-08-28', "Men's Track Cycling C5", 29),
(30, 'Bronze', '2021-08-29', "Men's 100m Freestyle S13", 30),
(31, 'Gold', '2021-08-25', "Women's Table Tennis Class 5", 31),
(32, 'Silver', '2021-08-26', "Men's Taekwondo K44", 32),
(33, 'Bronze', '2021-08-27', "Men's Wheelchair Basketball", 33),
(34, 'Gold', '2021-08-28', "Men's Football 5-a-side", 34),
(35, 'Silver', '2021-08-29', "Men's Powerlifting -59kg", 35),
(36, 'Bronze', '2021-08-25', "Women's 50m Freestyle S3", 36),
(37, 'Gold', '2021-08-26', "Men's Triathlon PTWC1", 37),
(38, 'Silver', '2021-08-27', "Men's 100m T12", 38),
(39, 'Bronze', '2021-08-28', "Men's Football 5-a-side", 39),
(40, 'Gold', '2021-08-29', "Men's 200m T36", 40),
(41, 'Silver', '2021-08-25', "Women's 100m Backstroke S2", 41),
(42, 'Bronze', '2021-08-26', "Women's Shot Put F37", 42),
(43, 'Gold', '2021-08-27', "Men's Road Cycling C5", 43),
(44, 'Silver', '2021-08-28', "Women's Individual Dressage Test", 44),
(45, 'Bronze', '2021-08-29', "Women's 100m T34", 45),
(46, 'Gold', '2021-08-25', "Men's Powerlifting -49kg", 46),
(47, 'Silver', '2021-08-26', "Men's Canoe Sprint KL2", 47),
(48, 'Bronze', '2021-08-27', "Men's 100m T11", 48),
(49, 'Gold', '2021-08-28', "Women's Boccia BC4", 49),
(50, 'Silver', '2021-08-29', "Women's 100m T13", 50),
(51, 'Bronze', '2021-08-25', "Women's Road Cycling H5", 51),
(52, 'Gold', '2021-08-26', "Men's 1500m T12", 52),
(53, 'Silver', '2021-08-27', "Men's Shot Put F34", 53),
(54, 'Bronze', '2021-08-28', "Men's 100m Freestyle S13", 54),
(55, 'Gold', '2021-08-29', "Women's Shot Put F20", 55),
(56, 'Silver', '2021-08-25', "Men's 200m T11", 56);

-- Inserting sample data to Coach
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('AGHAKOUCHEKI Abbas', 'Male', '1959-07-23', 'Coach', 'IRI', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('AKIN Ahmet', 'Male', '1974-11-07', 'Coach', 'TUR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('AKPWEH Toussaint', 'Male', '1966-11-01', 'Coach', 'FRA', 'FB5');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('ARIMA Masato', 'Male', '1980-03-08', 'Coach', 'JPN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('BAN Nicole', 'Female', '1987-04-20', 'Coach', 'CAN', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('BARGUEIRAS MARTINEZ Jesus David', 'Male', '1983-04-28', 'Coach', 'ESP', 'FB5');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('BHANIA Haj', 'Male', '1960-07-24', 'Coach', 'GBR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('BOUTIBA Saad', 'Male', '1969-02-19', 'Coach', 'ALG', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('BRAHIMI Mustapha', 'Male', '1957-05-09', 'Coach', 'ALG', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CARRION RUIZ Abraham', 'Male', '1977-11-10', 'Coach', 'ESP', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CHEN Qi', 'Male', '1976-03-18', 'Coach', 'CHN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CHOUDHRY Gaz', 'Male', '1985-06-23', 'Coach', 'GBR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CORR Peter', 'Male', '1958-07-17', 'Coach', 'AUS', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('COTE Patrick', 'Male', '1983-03-31', 'Coach', 'CAN', 'WRU');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CUSIN Olivier', 'Male', '1972-03-25', 'Coach', 'FRA', 'WRU');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('CZECHOWSKI Jake', 'Male', '1976-12-13', 'Coach', 'USA', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('de RICK Johan', 'Male', '1971-05-30', 'Coach', 'BEL', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DEMONTE Martin', 'Male', '1975-04-15', 'Coach', 'ARG', 'FB5');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DO NASCIMENTO CARDOSO Ana Lucia', 'Female', '1972-03-08', 'Coach', 'COL', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DUBBERLEY Brad', 'Male', '1981-06-28', 'Coach', 'AUS', 'WRU');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DUBROVIN Anton', 'Male', '1993-05-04', 'Coach', 'UKR', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DUBROVIN Fedir', 'Male', '1967-05-11', 'Coach', 'UKR', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('DUCHARME Marc Antoine', 'Male', '1979-08-27', 'Coach', 'CAN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('EDRIS Gharib', 'Male', '1963-05-26', 'Coach', 'EGY', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('EL MOUNTAQI Driss', 'Male', '1966-02-18', 'Coach', 'MAR', 'FB5');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('ELAIUTY Mosaad', 'Male', '1972-11-14', 'Coach', 'EGY', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('ELIA GIMENO Raul', 'Male', '1966-09-28', 'Coach', 'ESP', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('ELTAYEB Hani', 'Male', '1978-04-28', 'Coach', 'EGY', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FAREBROTHER Trent', 'Male', '1960-09-14', 'Coach', 'CAN', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FERIANI Matteo', 'Male', '1974-09-15', 'Coach', 'CAN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FISHER Simon', 'Male', '1900-01-01', 'Coach', 'GBR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FREITAS DO NASCIMENTO Dailton', 'Male', '1966-09-12', 'Coach', 'BRA', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FRIDAY Craig', 'Male', '1972-06-13', 'Coach', 'AUS', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('FURNESS Shane', 'Male', '1972-09-04', 'Coach', 'AUS', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('GECEVICIUS Valdas', 'Male', '1961-01-05', 'Coach', 'LTU', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('GUEDES DANTAS Jose', 'Male', '1974-09-04', 'Coach', 'BRA', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('GUENTHER Johannes', 'Male', '1982-03-09', 'Coach', 'GER', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('GUMBERT James', 'Male', '1963-11-18', 'Coach', 'USA', 'WRU');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('HAMITER William', 'Male', '1959-11-06', 'Coach', 'USA', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('HRUSTEMOVIC Mirza', 'Male', '1959-01-10', 'Coach', 'BIH', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('ICHIKAWA Kyoichi', 'Male', '1976-09-01', 'Coach', 'JPN', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('IWASA Yoshiaki', 'Male', '1958-01-06', 'Coach', 'JPN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('JOHNSON Lawrence', 'Male', '1963-12-06', 'Coach', 'USA', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KARASU Gultekin', 'Male', '1974-07-02', 'Coach', 'TUR', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KIM Hyun Woo', 'Male', '1995-10-31', 'Coach', 'KOR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KO Kwangyub', 'Male', '1900-01-01', 'Coach', 'KOR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KONGDANPRAI Kongkiat', 'Male', '1963-01-23', 'Coach', 'THA', 'FB5');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KRYVENKO Kseniia', 'Female', '1991-12-22', 'Coach', 'UKR', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KUBO Yoshihiro', 'Male', '1989-03-13', 'Coach', 'JPN', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KUDO Rikiya', 'Male', '1981-06-11', 'Coach', 'JPN', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('KYOYA Kazuyuki', 'Male', '1971-08-13', 'Coach', 'JPN', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('LAWRENCE Matt', 'Male', '1982-08-16', 'Coach', 'GBR', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('LAWRENCE Matt', 'Male', '1982-08-16', 'Coach', 'GBR', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('LYKINS Ron', 'Male', '1961-02-26', 'Coach', 'USA', 'WBK');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('MANO Yoshihisa', 'Male', '1965-02-15', 'Coach', 'JPN', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('MEDIATO Celio', 'Male', '1966-06-07', 'Coach', 'BRA', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('MERTEN Michael', 'Male', '1969-01-12', 'Coach', 'GER', 'VBS');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('MIKAMI Yukako', 'Female', '1978-02-24', 'Coach', 'JPN', 'GBL');
INSERT INTO Coach (name, gender, birth_date, `function`, country_code, discipline_code) VALUES ('MITCHELL Greg', 'Male', '1979-09-19', 'Coach', 'NZL', 'WRU');

-- Inserting sample data to Technical_Staff
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ADLER DOHLHOFER Kathi', 'Female', '1983-01-08', 'WRU');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AGBOTON Engelbert', 'Male', '1969-08-29', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AGUADO GOMEZ Raquel', 'Female', '1976-08-29', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AKATORI Kentarou', 'Male', '1990-03-14', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AKATSUKA Kento', 'Male', '1994-01-26', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ALCHUKUR Leila', 'Female', '1991-06-25', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ALESZCZYK Katarzyna', 'Female', '1978-10-30', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ALGHANEM Ghazi', 'Male', '1974-11-23', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ALLAN Lisa', 'Female', '1970-05-06', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ALVAREZ MENENDEZ Sara', 'Female', '1975-07-10', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AOKI Keisuke', 'Male', '1984-09-16', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ARAI Kazuki', 'Male', '1992-08-27', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ARCHIBALD Glynn', 'Male', '1963-04-18', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ARGOUBI Mohammed', 'Male', '1956-01-20', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ARPAS Krisztina', 'Female', '1978-07-22', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ASAMI Akiko', 'Female', '1984-01-23', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ATIE Mohamad', 'Male', '1979-12-08', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('AVERY Robert', 'Male', '1963-02-02', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BABIUC Ioana', 'Female', '1975-01-07', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BALINT Attila', 'Male', '1984-12-21', 'FB5');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BAUTISTA Maria', 'Female', '1978-10-13', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BAYAT Nedim', 'Male', '1966-01-01', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BEPPU Haruka', 'Female', '1988-01-01', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BERBEROVIC Belmir', 'Male', '1976-03-08', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BIRO Norbert', 'Male', '1974-03-05', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('BRAUN Akos', 'Male', '1978-06-26', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CALADO Andre', 'Male', '1982-05-16', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CARCOUET Francois', 'Male', '1976-03-25', 'FB5');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CHISARI Francesco', 'Male', '1980-09-26', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CHISHINA Yoichi', 'Male', '1978-04-11', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CHRISTODOULOS Antonios', 'Male', '1970-05-28', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('COSTELLO Liam', 'Male', '1988-09-15', 'WRU');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('COUPAR David', 'Male', '1958-01-02', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CRUTCHETT Jennifer', 'Female', '1974-09-11', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CSOSZ Imre', 'Male', '1969-05-31', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('CUNNINGHAM Suzanne', 'Female', '1949-04-23', 'EQU');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('da ROCHA VIEIRA Jeferson', 'Male', '1964-10-20', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DAI Shu Hua', 'Female', '1972-07-17', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DAMAS Rui', 'Male', '1986-07-22', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DAVIS Jeffrey', 'Male', '1962-07-27', 'FB5');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('de BRUYNE Tom', 'Male', '1992-11-06', 'FB5');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DEHGHAN Reza', 'Male', '1964-07-12', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DESROSES Olivier', 'Male', '1975-06-10', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DIB Julie', 'Female', '1977-07-18', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('DOBA Yoshihisa', 'Male', '1958-05-07', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('ENOMOTO Masaharu', 'Male', '1951-09-19', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FANDO Artur', 'Male', '1973-09-30', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FARMER Pierre', 'Male', '1955-03-26', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FIEBICH Christina', 'Female', '1973-01-19', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FIROUZI Ebrahim', 'Male', '1968-03-08', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FISCHER Ute', 'Female', '1970-11-26', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FUJII Kensuke', 'Male', '1980-01-08', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FUKUCHI Kenshiro', 'Male', '1973-05-26', 'JUD');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FUKUTA Toshimasa', 'Male', '1997-01-13', 'VBS');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('FUNAZUMI Sayuri', 'Female', '1978-12-18', 'GBL');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('GAUDET Ryan', 'Male', '1979-10-20', 'WRU');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('GAUS Maxim', 'Male', '1989-02-03', 'TKW');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('GERRITSEN Hanneke', 'Female', '1946-01-12', 'EQU');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('GONZALEZ Rafael', 'Male', '1992-07-05', 'FB5');
INSERT INTO Technical_Staff (name, gender, birth_date, discipline_code) VALUES ('HAIDATE Sho', 'Male', '1989-11-04', 'GBL');


-- Show's all the inserted values in the table's
SELECT * FROM Country;
SELECT * FROM Discipline;
SELECT * FROM Athlete;
SELECT * FROM Participation;
SELECT * FROM Medals;
SELECT * FROM Coach;
SELECT * FROM Technical_Staff;
