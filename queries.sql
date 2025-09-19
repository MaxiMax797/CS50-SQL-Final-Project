-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

INSERT INTO `Client` (`client_id`, `Last_name`, `First_name`, `Email`, `Password`, `Address`, `Phone_number`) VALUES
(1, 'Iliescu', 'Diana', 'diana.iliescu@icloud.com', 'hashed_password_1', 'Str. Independentei nr. 45, Oradea, Romania', '+40745678911'),
(2, 'Dubois', 'Jean', 'jean.dubois@outlook.com', 'hashed_password_2', '12 Rue de Rivoli, Paris, France', '+33612345678'),
(3, 'Nielsen', 'Soren', 'soren.nielsen@yahoo.com', 'hashed_password_3', 'Bredgade 25, Copenhagen, Denmark', '+4520123456'),
(4, 'Smith', 'Emily', 'emily.smith@hotmail.com', 'hashed_password_4', '245 Main Street, New York, USA', '+12125550123'),
(5, 'Johnson', 'Michael', 'michael.johnson@gmail.com', 'hashed_password_5', '550 Market Street, San Francisco, USA', '+14155550123'),
(6, 'Martin', 'Sophie', 'sophie.martin@oracle.com', 'hashed_password_6', '1200 Rue Sainte-Catherine, Montreal, Canada', '+15145550123'),
(7, 'Tanaka', 'Haruto', 'haruto.tanaka@icloud.com', 'hashed_password_7', '3-2-1 Shibuya, Tokyo, Japan', '+81312345678'),
(8, 'Lopez', 'Carlos', 'carlos.lopez@yahoo.com', 'hashed_password_8', 'Av. Insurgentes Sur 300, Mexico City, Mexico', '+525512345678'),
(9, 'Wang', 'Li', 'li.wang@gmail.com', 'hashed_password_9', '88 Nanjing Road, Shanghai, China', '+8613912345678'),
(10, 'Williams', 'Olivia', 'olivia.williams@hotmail.com', 'hashed_password_10', '200 George Street, Sydney, Australia', '+61290123456'),
(11, 'Ivanov', 'Nikolai', 'nikolai.ivanov@outlook.com', 'hashed_password_11', 'Ul. Arbat 15, Moscow, Russia', '+74951234567'),
(12, 'Müller', 'Anna', 'anna.muller@gmx.de', 'hashed_password_12', 'Alexanderplatz 1, Berlin, Germany', '+4930123456789'),
(13, 'García', 'Carlos', 'carlos.garcia@telefonica.es', 'hashed_password_13', 'Gran Vía 28, Madrid, Spain', '+34911234567'),
(14, 'Rossi', 'Giulia', 'giulia.rossi@libero.it', 'hashed_password_14', 'Via del Corso 45, Rome, Italy', '+390612345678'),
(15, 'Silva', 'João', 'joao.silva@sapo.pt', 'hashed_password_15', 'Rua Augusta 100, Lisbon, Portugal', '+351213456789'),
(16, 'Kowalski', 'Katarzyna', 'katarzyna.kowalski@wp.pl', 'hashed_password_16', 'Marszałkowska 10, Warsaw, Poland', '+48221234567'),
(17, 'Novák', 'Tomáš', 'tomas.novak@seznam.cz', 'hashed_password_17', 'Wenceslas Square 5, Prague, Czech Republic', '+420224123456'),
(18, 'Andersson', 'Emma', 'emma.andersson@telia.se', 'hashed_password_18', 'Drottninggatan 20, Stockholm, Sweden', '+46812345678'),
(19, 'Kim', 'Min-jun', 'minjun.kim@naver.com', 'hashed_password_19', '123 Gangnam-gu, Seoul, South Korea', '+821012345678'),
(20, 'Patel', 'Priya', 'priya.patel@gmail.com', 'hashed_password_20', 'MG Road 456, Mumbai, India', '+919876543210'),
(21, 'Suzuki', 'Yuki', 'yuki.suzuki@yahoo.co.jp', 'hashed_password_21', '7-8-9 Ginza, Tokyo, Japan', '+819012345678'),
(22, 'Chen', 'Wei', 'wei.chen@163.com', 'hashed_password_22', '789 Huaihai Road, Shanghai, China', '+8613876543210'),
(23, 'Nguyen', 'Linh', 'linh.nguyen@gmail.com', 'hashed_password_23', '12 Nguyen Hue Street, Ho Chi Minh City, Vietnam', '+84912345678'),
(24, 'Thompson', 'Sarah', 'sarah.thompson@yahoo.com', 'hashed_password_24', '890 Broadway, Los Angeles, USA', '+13235550123'),
(25, 'Rodriguez', 'Miguel', 'miguel.rodriguez@hotmail.com', 'hashed_password_25', 'Av. Reforma 200, Mexico City, Mexico', '+525567890123'),
(26, 'Silva', 'Maria', 'maria.silva@uol.com.br', 'hashed_password_26', 'Av. Paulista 1500, São Paulo, Brazil', '+551123456789'),
(27, 'González', 'Diego', 'diego.gonzalez@gmail.com', 'hashed_password_27', 'Florida 900, Buenos Aires, Argentina', '+541134567890'),
(28, 'Hassan', 'Fatima', 'fatima.hassan@yahoo.com', 'hashed_password_28', 'Tahrir Square 10, Cairo, Egypt', '+201234567890'),
(29, 'Al-Rahman', 'Omar', 'omar.alrahman@gmail.com', 'hashed_password_29', 'King Fahd Road 25, Riyadh, Saudi Arabia', '+966123456789'),
(30, 'Okafor', 'Chioma', 'chioma.okafor@gmail.com', 'hashed_password_30', 'Victoria Island 15, Lagos, Nigeria', '+234123456789'),
(31, 'Brown', 'James', 'james.brown@outlook.com', 'hashed_password_31', '150 Collins Street, Melbourne, Australia', '+61391234567'),
(32, 'Wilson', 'Emma', 'emma.wilson@gmail.com', 'hashed_password_32', '88 Queen Street, Auckland, New Zealand', '+64912345678'),
(33, 'Petrov', 'Aleksander', 'aleksander.petrov@yandex.ru', 'hashed_password_33', 'Nevsky Prospect 50, St. Petersburg, Russia', '+78124567890'),
(34, 'Jansen', 'Lars', 'lars.jansen@hotmail.com', 'hashed_password_34', 'Dam Square 12, Amsterdam, Netherlands', '+31206789012'),
(35, 'Hansen', 'Ingrid', 'ingrid.hansen@gmail.com', 'hashed_password_35', 'Strøget 25, Copenhagen, Denmark', '+4533123456'),
(36, 'O''Sullivan', 'Aoife', 'aoife.osullivan@eircom.net', 'hashed_password_36', 'Grafton Street 30, Dublin, Ireland', '+353123456789'),
(37, 'Dimitriou', 'Nikos', 'nikos.dimitriou@yahoo.gr', 'hashed_password_37', 'Syntagma Square 8, Athens, Greece', '+302103456789'),
(38, 'Fischer', 'Hans', 'hans.fischer@gmx.at', 'hashed_password_38', 'Stephansplatz 5, Vienna, Austria', '+431512345678'),
(39, 'Horvat', 'Ana', 'ana.horvat@t-com.hr', 'hashed_password_39', 'Ban Jelačić Square 3, Zagreb, Croatia', '+385123456789'),
(40, 'Popov', 'Stefan', 'stefan.popov@abv.bg', 'hashed_password_40', 'Vitosha Boulevard 18, Sofia, Bulgaria', '+359876543210'),
(41, 'Kumar', 'Raj', 'raj.kumar@rediffmail.com', 'hashed_password_41', 'Connaught Place 45, New Delhi, India', '+911123456789'),
(42, 'Sato', 'Hiroshi', 'hiroshi.sato@docomo.ne.jp', 'hashed_password_42', '5-6-7 Akasaka, Tokyo, Japan', '+819098765432'),
(43, 'Johansson', 'Astrid', 'astrid.johansson@spray.se', 'hashed_password_43', 'Gamla Stan 15, Stockholm, Sweden', '+46701234567'),
(44, 'Leblanc', 'Pierre', 'pierre.leblanc@wanadoo.fr', 'hashed_password_44', 'Champs-Élysées 100, Paris, France', '+33145678901'),
(45, 'Costa', 'Isabella', 'isabella.costa@gmail.com', 'hashed_password_45', 'Copacabana 200, Rio de Janeiro, Brazil', '+552198765432'),
(46, 'Park', 'Ji-hye', 'jihye.park@daum.net', 'hashed_password_46', '456 Myeongdong, Seoul, South Korea', '+821087654321'),
(47, 'Ahmed', 'Yasmin', 'yasmin.ahmed@gmail.com', 'hashed_password_47', 'Zamalek District 22, Cairo, Egypt', '+201098765432'),
(48, 'Bakker', 'Sophie', 'sophie.bakker@ziggo.nl', 'hashed_password_48', 'Vondelpark 88, Amsterdam, Netherlands', '+31612345678'),
(49, 'Larsson', 'Erik', 'erik.larsson@gmail.com', 'hashed_password_49', 'Götgatan 77, Stockholm, Sweden', '+46701357924'),
(50, 'MacDonald', 'Fiona', 'fiona.macdonald@btinternet.com', 'hashed_password_50', 'Royal Mile 33, Edinburgh, Scotland', '+441312345678'),
(51, 'Brennan', 'Cian', 'cian.brennan@gmail.com', 'hashed_password_51', 'Temple Bar 19, Dublin, Ireland', '+353876543210'),
(52, 'Zhang', 'Wei', 'wei.zhang@163.com', 'hashed_password_52', '456 Wangfujing Street, Beijing, China', '+8613912345679'),
(53, 'Singh', 'Rajesh', 'rajesh.singh@gmail.com', 'hashed_password_53', '78 Connaught Place, New Delhi, India', '+919876543211'),
(54, 'Yamamoto', 'Sakura', 'sakura.yamamoto@docomo.ne.jp', 'hashed_password_54', '2-3-4 Shinjuku, Tokyo, Japan', '+819012345679'),
(55, 'Müller', 'Thomas', 'thomas.muller@web.de', 'hashed_password_55', 'Kurfürstendamm 120, Berlin, Germany', '+4930123456790'),
(56, 'Gomez', 'Isabella', 'isabella.gomez@hotmail.com', 'hashed_password_56', 'Calle Gran Via 200, Madrid, Spain', '+34911234568'),
(57, 'Rossi', 'Marco', 'marco.rossi@libero.it', 'hashed_password_57', 'Via Veneto 50, Rome, Italy', '+390612345679'),
(58, 'Dubois', 'Marie', 'marie.dubois@orange.fr', 'hashed_password_58', 'Rue de la Paix 25, Paris, France', '+33145678912'),
(59, 'Johnson', 'David', 'david.johnson@aol.com', 'hashed_password_59', '350 5th Avenue, New York, USA', '+12125550124'),
(60, 'Brown', 'Sarah', 'sarah.brown@icloud.com', 'hashed_password_60', '100 Queen Street, Toronto, Canada', '+14165550124');

INSERT INTO `Category` (`category_id`, `Category_name`) VALUES
(1, 'Women Dresses'),
(2, 'Men Shirts'),
(3, 'Women Tops'),
(4, 'Men Pants'),
(5, 'Women Skirts'),
(6, 'Men Jackets'),
(7, 'Women Accessories'),
(8, 'Men Shoes'),
(9, 'Women Shoes'),
(10, 'Unisex Accessories'),
(11, 'Women Bags'),
(12, 'Men Sweaters'),
(13, 'Women Jewelry'),
(14, 'Men Accessories'),
(15, 'Kids Clothing'),
(16, 'Activewear'),
(17, 'Swimwear'),
(18, 'Formal Wear'),
(19, 'Casual Wear'),
(20, 'Seasonal Clothing');

INSERT INTO `Product` (`product_id`, `category_id`, `Stock`, `Price`, `SKU`, `Description`) VALUES
(1, 1, 25, 149.99, 'WD-001-BLK-M', 'Elegant black evening dress, perfect for special occasions'),
(2, 1, 18, 129.99, 'WD-002-RED-S', 'Red cocktail dress with lace detailing'),
(3, 1, 12, 199.99, 'WD-003-BLU-L', 'Blue floral summer dress, lightweight cotton'),
(4, 1, 8, 299.99, 'WD-004-GLD-M', 'Gold sequin party dress, limited edition'),
(5, 2, 40, 89.99, 'MS-005-WHT-L', 'Classic white cotton shirt for professional and casual wear'),
(6, 2, 35, 79.99, 'MS-006-BLU-XL', 'Blue denim shirt, casual style'),
(7, 2, 28, 119.99, 'MS-007-PLK-M', 'Plaid flannel shirt, warm and comfortable'),
(8, 2, 15, 159.99, 'MS-008-SIL-L', 'Silver metallic dress shirt for special occasions'),
(9, 3, 35, 59.99, 'WT-009-RED-S', 'Stylish red blouse with floral pattern'),
(10, 3, 42, 49.99, 'WT-010-WHT-M', 'White cotton t-shirt, basic casual wear'),
(11, 3, 25, 89.99, 'WT-011-BLK-L', 'Black silk blouse, elegant office wear'),
(12, 3, 18, 69.99, 'WT-012-PNK-S', 'Pink lace top, perfect for evenings'),
(13, 4, 30, 119.99, 'MP-013-NVY-32', 'Navy blue chino pants, comfortable fit'),
(14, 4, 22, 159.99, 'MP-014-BLK-34', 'Black formal trousers, wool blend'),
(15, 4, 35, 89.99, 'MP-015-KHK-36', 'Khaki cargo pants, practical and stylish'),
(16, 4, 12, 199.99, 'MP-016-GRY-38', 'Gray tailored dress pants, premium quality'),
(17, 5, 20, 79.99, 'WS-017-GRY-M', 'Gray pencil skirt, office appropriate'),
(18, 5, 15, 109.99, 'WS-018-BLK-S', 'Black leather mini skirt, edgy style'),
(19, 5, 25, 69.99, 'WS-019-PLT-M', 'Pleated midi skirt, burgundy color'),
(20, 5, 8, 149.99, 'WS-020-DNM-L', 'Denim maxi skirt, bohemian style'),
(21, 6, 15, 199.99, 'MJ-021-BLK-L', 'Black leather jacket, premium quality'),
(22, 6, 10, 259.99, 'MJ-022-BRN-XL', 'Brown suede jacket, rugged style'),
(23, 6, 18, 149.99, 'MJ-023-NAVY-M', 'Navy blue bomber jacket, casual wear'),
(24, 6, 6, 399.99, 'MJ-024-BLK-XXL', 'Black wool overcoat, winter essential'),
(25, 7, 50, 29.99, 'WA-025-SLV-OS', 'Silver chain necklace with pendant'),
(26, 7, 35, 39.99, 'WA-026-GLD-OS', 'Gold hoop earrings, hypoallergenic'),
(27, 7, 45, 19.99, 'WA-027-SCR-OS', 'Silk scarf with floral pattern'),
(28, 7, 28, 49.99, 'WA-028-BLT-OS', 'Leather belt with silver buckle'),
(29, 8, 25, 159.99, 'MSH-029-BRN-42', 'Brown leather dress shoes'),
(30, 8, 30, 129.99, 'MSH-030-BLK-43', 'Black casual sneakers, comfortable'),
(31, 8, 18, 199.99, 'MSH-031-TAN-44', 'Tan leather boots, waterproof'),
(32, 8, 12, 89.99, 'MSH-032-WHT-41', 'White athletic shoes, lightweight'),
(33, 9, 30, 129.99, 'WSH-033-BLK-38', 'Black high heel pumps'),
(34, 9, 25, 99.99, 'WSH-034-RED-37', 'Red ballet flats, comfortable'),
(35, 9, 20, 179.99, 'WSH-035-TAN-39', 'Tan ankle boots with block heel'),
(36, 9, 15, 69.99, 'WSH-036-WHT-36', 'White sandals, summer essential'),
(37, 10, 45, 39.99, 'UA-037-BLK-OS', 'Unisex black baseball cap'),
(38, 10, 35, 24.99, 'UA-038-GRY-OS', 'Gray beanie with logo embroidery'),
(39, 10, 50, 19.99, 'UA-039-BLU-OS', 'Blue canvas tote bag'),
(40, 10, 40, 29.99, 'UA-040-RED-OS', 'Red wool scarf, winter warmth'),
(41, 11, 15, 299.99, 'WB-041-BRN-M', 'Brown leather handbag with gold hardware'),
(42, 11, 8, 199.99, 'WB-042-BLK-L', 'Black tote bag, spacious and elegant'),
(43, 11, 22, 89.99, 'WB-043-RED-S', 'Red crossbody bag, perfect for evening'),
(44, 12, 20, 89.99, 'MSW-044-GRY-L', 'Gray wool sweater, classic design'),
(45, 12, 15, 119.99, 'MSW-045-NAVY-XL', 'Navy blue cable knit sweater'),
(46, 12, 25, 69.99, 'MSW-046-BLK-M', 'Black cotton sweater, casual wear'),
(47, 13, 35, 79.99, 'WJ-047-SLV-OS', 'Silver bracelet with crystal accents'),
(48, 13, 28, 159.99, 'WJ-048-GLD-OS', 'Gold earrings with pearl drops'),
(49, 13, 42, 49.99, 'WJ-049-RSG-OS', 'Rose gold ring with cubic zirconia'),
(50, 14, 30, 89.99, 'MA-050-BLK-OS', 'Black leather wallet with RFID protection'),
(51, 14, 15, 69.99, 'MA-051-BRN-OS', 'Brown leather belt, genuine cowhide'),
(52, 14, 40, 39.99, 'MA-052-NVY-OS', 'Navy blue silk tie with pattern'),
(53, 15, 20, 39.99, 'KC-053-PNK-10', 'Pink dress for girls, age 8-10'),
(54, 15, 25, 29.99, 'KC-054-BLU-12', 'Blue t-shirt for boys, age 10-12'),
(55, 15, 18, 49.99, 'KC-055-YLW-8', 'Yellow hoodie for kids, age 6-8'),
(56, 16, 30, 59.99, 'AW-056-BLK-M', 'Black yoga pants, moisture-wicking'),
(57, 16, 25, 49.99, 'AW-057-BLU-L', 'Blue athletic shorts, quick-dry'),
(58, 16, 35, 79.99, 'AW-058-GRY-XL', 'Gray workout hoodie, comfortable'),
(59, 17, 20, 69.99, 'SW-059-BLK-M', 'Black one-piece swimsuit'),
(60, 17, 15, 89.99, 'SW-060-BLU-L', 'Blue swim trunks for men'),
(61, 17, 18, 79.99, 'SW-061-RED-S', 'Red bikini set, adjustable'),
(62, 1, 0, 249.99, 'WD-062-PRP-L', 'Purple silk cocktail dress - OUT OF STOCK'),
(63, 2, 18, 129.99, 'MS-063-GLD-XL', 'Gold embroidered dress shirt - never ordered'),
(64, 3, 30, 79.99, 'WT-064-ORG-S', 'Orange silk blouse - never ordered'),
(65, 4, 12, 169.99, 'MP-065-BRG-34', 'Burgundy velvet trousers - never ordered');

INSERT INTO `Invoice` (`invoice_id`, `client_id`, `issue_date`, `registration_number`, `invoice_number`) VALUES
(1, 1, '2024-01-15', 'REG001', 'INV-2024-001'),
(2, 2, '2024-01-18', 'REG002', 'INV-2024-002'),
(3, 3, '2024-01-22', 'REG003', 'INV-2024-003'),
(4, 4, '2024-01-25', 'REG004', 'INV-2024-004'),
(5, 5, '2024-02-01', 'REG005', 'INV-2024-005'),
(6, 6, '2024-02-05', 'REG006', 'INV-2024-006'),
(7, 7, '2024-02-10', 'REG007', 'INV-2024-007'),
(8, 8, '2024-02-14', 'REG008', 'INV-2024-008'),
(9, 9, '2024-02-18', 'REG009', 'INV-2024-009'),
(10, 10, '2024-02-22', 'REG010', 'INV-2024-010'),
(11, 11, '2024-02-26', 'REG011', 'INV-2024-011'),
(12, 12, '2024-03-01', 'REG012', 'INV-2024-012'),
(13, 13, '2024-03-05', 'REG013', 'INV-2024-013'),
(14, 14, '2024-03-08', 'REG014', 'INV-2024-014'),
(15, 15, '2024-03-12', 'REG015', 'INV-2024-015'),
(16, 16, '2024-03-15', 'REG016', 'INV-2024-016'),
(17, 17, '2024-03-18', 'REG017', 'INV-2024-017'),
(18, 18, '2024-03-22', 'REG018', 'INV-2024-018'),
(19, 19, '2024-03-25', 'REG019', 'INV-2024-019'),
(20, 20, '2024-03-28', 'REG020', 'INV-2024-020'),
(21, 21, '2024-04-01', 'REG021', 'INV-2024-021'),
(22, 22, '2024-04-05', 'REG022', 'INV-2024-022'),
(23, 23, '2024-04-08', 'REG023', 'INV-2024-023'),
(24, 24, '2024-04-12', 'REG024', 'INV-2024-024'),
(25, 25, '2024-04-15', 'REG025', 'INV-2024-025'),
(26, 26, '2024-04-18', 'REG026', 'INV-2024-026'),
(27, 27, '2024-04-22', 'REG027', 'INV-2024-027'),
(28, 28, '2024-04-25', 'REG028', 'INV-2024-028'),
(29, 29, '2024-04-28', 'REG029', 'INV-2024-029'),
(30, 30, '2024-05-02', 'REG030', 'INV-2024-030');

INSERT INTO `Transport` (`transport_id`, `client_id`, `Transport_date`, `Address`, `City`, `Country`, `Postal_code`) VALUES
(1, 1, '2024-01-17', 'Str. Independentei nr. 45', 'Oradea', 'Romania', '410123'),
(2, 2, '2024-01-20', '12 Rue de Rivoli', 'Paris', 'France', '75001'),
(3, 3, '2024-01-24', 'Bredgade 25', 'Copenhagen', 'Denmark', '1260'),
(4, 4, '2024-01-27', '245 Main Street', 'New York', 'USA', '10001'),
(5, 5, '2024-02-03', '550 Market Street', 'San Francisco', 'USA', '94103'),
(6, 6, '2024-02-07', '1200 Rue Sainte-Catherine', 'Montreal', 'Canada', 'H3B1K1'),
(7, 7, '2024-02-12', '3-2-1 Shibuya', 'Tokyo', 'Japan', '150-0002'),
(8, 8, '2024-02-16', 'Av. Insurgentes Sur 300', 'Mexico City', 'Mexico', '03100'),
(9, 9, '2024-02-20', '88 Nanjing Road', 'Shanghai', 'China', '200001'),
(10, 10, '2024-02-24', '200 George Street', 'Sydney', 'Australia', '2000'),
(11, 11, '2024-02-28', 'Ul. Arbat 15', 'Moscow', 'Russia', '119019'),
(12, 12, '2024-03-03', 'Alexanderplatz 1', 'Berlin', 'Germany', '10178'),
(13, 13, '2024-03-07', 'Gran Vía 28', 'Madrid', 'Spain', '28013'),
(14, 14, '2024-03-10', 'Via del Corso 45', 'Rome', 'Italy', '00187'),
(15, 15, '2024-03-14', 'Rua Augusta 100', 'Lisbon', 'Portugal', '1100-048'),
(16, 16, '2024-03-17', 'Marszałkowska 10', 'Warsaw', 'Poland', '00-624'),
(17, 17, '2024-03-20', 'Wenceslas Square 5', 'Prague', 'Czech Republic', '110 00'),
(18, 18, '2024-03-24', 'Drottninggatan 20', 'Stockholm', 'Sweden', '111 51'),
(19, 19, '2024-03-27', '123 Gangnam-gu', 'Seoul', 'South Korea', '06292'),
(20, 20, '2024-03-30', 'MG Road 456', 'Mumbai', 'India', '400001'),
(21, 21, '2024-04-03', '7-8-9 Ginza', 'Tokyo', 'Japan', '104-0061'),
(22, 22, '2024-04-07', '789 Huaihai Road', 'Shanghai', 'China', '200020'),
(23, 23, '2024-04-10', '12 Nguyen Hue Street', 'Ho Chi Minh City', 'Vietnam', '700000'),
(24, 24, '2024-04-14', '890 Broadway', 'Los Angeles', 'USA', '90012'),
(25, 25, '2024-04-17', 'Av. Reforma 200', 'Mexico City', 'Mexico', '06600'),
(26, 26, '2024-04-20', 'Av. Paulista 1500', 'São Paulo', 'Brazil', '01310-100'),
(27, 27, '2024-04-24', 'Florida 900', 'Buenos Aires', 'Argentina', 'C1005AAP'),
(28, 28, '2024-04-27', 'Tahrir Square 10', 'Cairo', 'Egypt', '11511'),
(29, 29, '2024-04-30', 'King Fahd Road 25', 'Riyadh', 'Saudi Arabia', '12271'),
(30, 30, '2024-05-04', 'Victoria Island 15', 'Lagos', 'Nigeria', '101241');

INSERT INTO `Payment` (`payment_id`, `invoice_id`, `Payment_date`, `Amount`, `IBAN`, `Account_number`, `Card_number`, `Transaction_code`, `Card_type`, `Receipt_number`) VALUES
(1, 1, '2024-01-15', 149.99, 'RO49AAAA1B31007593840000', 'RO1234567890', '4***-****-****-1111', 'TXN001234567', 'Visa', 'RCP001'),
(2, 2, '2024-01-18', 89.99, 'FR7630006000011234567890189', 'FR1234567890', '5***-****-****-2222', 'TXN001234568', 'MasterCard', 'RCP002'),
(3, 3, '2024-01-22', 59.99, 'DK5000400440116243', 'DK1234567890', '4***-****-****-3333', 'TXN001234569', 'Visa', 'RCP003'),
(4, 4, '2024-01-25', 119.99, 'US12345678901234567890', 'US987654321', '5***-****-****-4444', 'TXN001234570', 'MasterCard', 'RCP004'),
(5, 5, '2024-02-01', 79.99, 'US09876543210987654321', 'US123987654', '4***-****-****-5555', 'TXN001234571', 'Visa', 'RCP005'),
(6, 6, '2024-02-05', 199.99, 'CA1230000123456789012', 'CA123456789', '5***-****-****-6666', 'TXN001234572', 'MasterCard', 'RCP006'),
(7, 7, '2024-02-10', 29.99, 'JP891000000000123456789', 'JP987654321', '4***-****-****-7777', 'TXN001234573', 'Visa', 'RCP007'),
(8, 8, '2024-02-14', 159.99, 'MX21000200001234567890', 'MX123456789', '5***-****-****-8888', 'TXN001234574', 'MasterCard', 'RCP008'),
(9, 9, '2024-02-18', 129.99, 'CN12345678901234567890', 'CN987654321', '4***-****-****-9999', 'TXN001234575', 'Visa', 'RCP009'),
(10, 10, '2024-02-22', 39.99, 'AU123456789012345678', 'AU123456789', '5***-****-****-1010', 'TXN001234576', 'MasterCard', 'RCP010'),
(11, 11, '2024-02-26', 59.99, 'RU04011001000000012345', 'RU123456789', '4***-****-****-2020', 'TXN001234577', 'Visa', 'RCP011'),
(12, 12, '2024-03-01', 299.99, 'DE89370400440532013000', 'DE1234567890', '4***-****-****-3030', 'TXN001234578', 'Visa', 'RCP012'),
(13, 13, '2024-03-05', 79.99, 'ES9121000418450200051332', 'ES1234567890', '5***-****-****-4040', 'TXN001234579', 'MasterCard', 'RCP013'),
(14, 14, '2024-03-08', 159.99, 'IT60X0542811101000000123456', 'IT1234567890', '4***-****-****-5050', 'TXN001234580', 'Visa', 'RCP014'),
(15, 15, '2024-03-12', 89.99, 'PT50000201231234567890154', 'PT1234567890', '5***-****-****-6060', 'TXN001234581', 'MasterCard', 'RCP015'),
(16, 16, '2024-03-15', 49.99, 'PL27114020040000300201355387', 'PL1234567890', '4***-****-****-7070', 'TXN001234582', 'Visa', 'RCP016'),
(17, 17, '2024-03-18', 199.99, 'CZ6508000000192000145399', 'CZ1234567890', '5***-****-****-8080', 'TXN001234583', 'MasterCard', 'RCP017'),
(18, 18, '2024-03-22', 129.99, 'SE4550000000058398257466', 'SE1234567890', '4***-****-****-9090', 'TXN001234584', 'Visa', 'RCP018'),
(19, 19, '2024-03-25', 69.99, 'KR1234567890123456789012', 'KR1234567890', '5***-****-****-1212', 'TXN001234585', 'MasterCard', 'RCP019'),
(20, 20, '2024-03-28', 189.99, 'IN1234567890123456789012', 'IN1234567890', '4***-****-****-1313', 'TXN001234586', 'Visa', 'RCP020'),
(21, 21, '2024-04-01', 39.99, 'JP891000000000123456789', 'JP1234567891', '5***-****-****-1414', 'TXN001234587', 'MasterCard', 'RCP021'),
(22, 22, '2024-04-05', 99.99, 'CN12345678901234567890', 'CN1234567891', '4***-****-****-1515', 'TXN001234588', 'Visa', 'RCP022'),
(23, 23, '2024-04-08', 24.99, 'VN1234567890123456789012', 'VN1234567890', '5***-****-****-1616', 'TXN001234589', 'MasterCard', 'RCP023'),
(24, 24, '2024-04-12', 239.99, 'US12345678901234567891', 'US1234567891', '4***-****-****-1717', 'TXN001234590', 'Visa', 'RCP024'),
(25, 25, '2024-04-15', 159.99, 'MX21000200001234567891', 'MX1234567891', '5***-****-****-1818', 'TXN001234591', 'MasterCard', 'RCP025'),
(26, 26, '2024-04-18', 79.99, 'BR1234567890123456789012', 'BR1234567890', '4***-****-****-1919', 'TXN001234592', 'Visa', 'RCP026'),
(27, 27, '2024-04-22', 199.99, 'AR1234567890123456789012', 'AR1234567890', '5***-****-****-2121', 'TXN001234593', 'MasterCard', 'RCP027'),
(28, 28, '2024-04-25', 29.99, 'EG1234567890123456789012', 'EG1234567890', '4***-****-****-2222', 'TXN001234594', 'Visa', 'RCP028'),
(29, 29, '2024-04-28', 599.99, 'SA1234567890123456789012', 'SA1234567890', '5***-****-****-2323', 'TXN001234595', 'MasterCard', 'RCP029'),
(30, 30, '2024-05-02', 89.99, 'NG1234567890123456789012', 'NG1234567890', '4***-****-****-2424', 'TXN001234596', 'Visa', 'RCP030');

INSERT INTO `Orders` (`order_id`, `client_id`, `Completion_date`, `Total_price`) VALUES
(1, 1, '2024-01-15', 149.99),
(2, 2, '2024-01-18', 89.99),
(3, 3, '2024-01-22', 59.99),
(4, 4, '2024-01-25', 119.99),
(5, 5, '2024-02-01', 79.99),
(6, 6, '2024-02-05', 199.99),
(7, 7, '2024-02-10', 29.99),
(8, 8, '2024-02-14', 159.99),
(9, 9, '2024-02-18', 129.99),
(10, 10, '2024-02-22', 39.99),
(11, 12, '2024-03-01', 299.99),
(12, 13, '2024-03-05', 79.99),
(13, 14, '2024-03-08', 159.99),
(14, 15, '2024-03-12', 89.99),
(15, 16, '2024-03-15', 49.99),
(16, 17, '2024-03-18', 199.99),
(17, 18, '2024-03-22', 129.99),
(18, 19, '2024-03-25', 69.99),
(19, 20, '2024-03-28', 189.99),
(20, 21, '2024-04-01', 39.99),
(21, 22, '2024-04-05', 99.99),
(22, 23, '2024-04-08', 24.99),
(23, 24, '2024-04-12', 239.99),
(24, 25, '2024-04-15', 159.99),
(25, 26, '2024-04-18', 79.99),
(26, 27, '2024-04-22', 199.99),
(27, 28, '2024-04-25', 29.99),
(28, 29, '2024-04-28', 599.99),
(29, 30, '2024-05-02', 89.99),
(30, 1, '2024-05-05', 89.99),
(31, 3, '2024-05-08', 199.99),
(32, 5, '2024-05-12', 299.99),
(33, 12, '2024-05-15', 159.99),
(34, 20, '2024-05-18', 49.99);

INSERT INTO `Rating` (`rating_id`, `client_id`, `product_id`, `Value`, `Product_rating_date`) VALUES
(1, 1, 1, 5, '2024-01-20'),
(2, 2, 5, 4, '2024-01-23'),
(3, 3, 9, 5, '2024-01-27'),
(4, 4, 13, 4, '2024-01-30'),
(5, 5, 17, 3, '2024-02-06'),
(6, 6, 21, 5, '2024-02-10'),
(7, 7, 25, 4, '2024-02-15'),
(8, 8, 29, 5, '2024-02-19'),
(9, 9, 33, 4, '2024-02-23'),
(10, 10, 37, 5, '2024-02-27'),
(11, 12, 41, 5, '2024-03-05'),
(12, 13, 52, 4, '2024-03-10'),
(13, 14, 48, 5, '2024-03-13'),
(14, 15, 51, 3, '2024-03-17'),
(15, 16, 49, 4, '2024-03-20'),
(16, 17, 44, 5, '2024-03-23'),
(17, 18, 46, 4, '2024-03-27'),
(18, 19, 52, 3, '2024-03-30'),
(19, 20, 47, 5, '2024-04-02'),
(20, 21, 27, 4, '2024-04-05'),
(21, 22, 32, 4, '2024-04-08'),
(22, 23, 37, 5, '2024-04-12'),
(23, 24, 48, 5, '2024-04-16'),
(24, 25, 46, 3, '2024-04-20'),
(25, 26, 42, 4, '2024-04-23'),
(26, 27, 41, 5, '2024-04-27'),
(27, 28, 35, 4, '2024-05-01'),
(28, 29, 44, 5, '2024-05-05'),
(29, 30, 50, 4, '2024-05-08'),
(30, 31, 25, 5, '2024-05-12'),
(31, 32, 30, 4, '2024-05-15'),
(32, 33, 35, 3, '2024-05-18'),
(33, 34, 40, 5, '2024-05-22'),
(34, 35, 45, 4, '2024-05-25'),
(35, 36, 50, 5, '2024-05-28'),
(36, 37, 2, 4, '2024-06-01'),
(37, 38, 7, 3, '2024-06-05'),
(38, 39, 12, 5, '2024-06-08'),
(39, 40, 17, 4, '2024-06-12'),
(40, 52, 1, 5, '2024-06-20'),
(41, 53, 5, 4, '2024-06-25'),
(42, 54, 9, 3, '2024-06-30'),
(43, 55, 14, 5, '2024-07-05'),
(44, 56, 19, 4, '2024-07-10'),
(45, 57, 24, 5, '2024-07-15'),
(46, 58, 29, 3, '2024-07-20'),
(47, 59, 34, 4, '2024-07-25'),
(48, 60, 39, 5, '2024-07-30');

INSERT INTO `Wishlist` (`wishlist_id`, `client_id`, `product_id`) VALUES
(1, 1, 6),
(2, 2, 9),
(3, 3, 1),
(4, 4, 8),
(5, 5, 2),
(6, 6, 3),
(7, 7, 10),
(8, 8, 5),
(9, 9, 7),
(10, 10, 4),
(11, 12, 15),
(12, 13, 20),
(13, 14, 25),
(14, 15, 30),
(15, 16, 35),
(16, 17, 40),
(17, 18, 45),
(18, 19, 50),
(19, 20, 1),
(20, 21, 6),
(21, 22, 11),
(22, 23, 16),
(23, 24, 21),
(24, 25, 26),
(25, 26, 31),
(26, 27, 36),
(27, 28, 41),
(28, 29, 46),
(29, 30, 49),
(30, 31, 3),
(31, 32, 8),
(32, 33, 13),
(33, 34, 18),
(34, 35, 23),
(35, 36, 28),
(36, 37, 33),
(37, 38, 38),
(38, 39, 43),
(39, 40, 48);

INSERT INTO `Comment` (`comment_id`, `client_id`, `product_id`, `Content`, `Publication_date`) VALUES
(1, 1, 1, 'Absolutely love this dress! Perfect fit and great quality.', '2024-01-20'),
(2, 2, 5, 'Great shirt for work. Very comfortable and well-made.', '2024-01-23'),
(3, 3, 9, 'Beautiful blouse! The color is exactly as shown in photos.', '2024-01-27'),
(4, 4, 13, 'Good pants, comfortable for daily wear.', '2024-01-30'),
(5, 5, 17, 'Nice skirt but runs a bit small. Consider sizing up.', '2024-02-06'),
(6, 6, 21, 'Amazing leather jacket! Worth every penny.', '2024-02-10'),
(7, 7, 25, 'Pretty necklace, goes with many outfits.', '2024-02-15'),
(8, 8, 29, 'Excellent dress shoes. Very comfortable and stylish.', '2024-02-19'),
(9, 9, 33, 'Love these heels! Perfect height and very comfortable.', '2024-02-23'),
(10, 10, 37, 'Great cap! Good quality and fits well.', '2024-02-27'),
(11, 41, 1, 'Beautiful dress! The fabric is amazing quality.', '2024-03-10'),
(12, 42, 5, 'Perfect skirt for office wear. Very professional look.', '2024-03-15'),
(13, 43, 9, 'Comfortable heels that I can wear all day long.', '2024-03-20'),
(14, 44, 14, 'Elegant sweater, perfect for cold weather.', '2024-03-25'),
(15, 45, 19, 'Lovely skirt, received many compliments.', '2024-03-30'),
(16, 46, 24, 'Great jacket, good quality fabric.', '2024-04-05'),
(17, 47, 29, 'Beautiful shoes, looks great with formal wear.', '2024-04-10'),
(18, 48, 34, 'Comfortable flats, very functional.', '2024-04-15'),
(19, 49, 39, 'Nice tote bag, carries all my essentials.', '2024-04-20'),
(20, 50, 44, 'Perfect sweater, excellent fit.', '2024-04-25'),
(21, 12, 41, 'Amazing handbag! Lots of compartments.', '2024-05-01'),
(22, 13, 52, 'Nice tie, good for business meetings.', '2024-05-05'),
(23, 14, 33, 'Good shoes, comfortable for walking.', '2024-05-10'),
(24, 15, 44, 'Comfortable sweater, true to size.', '2024-05-15'),
(25, 16, 5, 'Cute skirt, runs a bit small though.', '2024-05-20'),
(26, 17, 16, 'Great dress pants, perfect for office.', '2024-05-25'),
(27, 18, 27, 'Beautiful scarf, adds style to any outfit.', '2024-05-30'),
(28, 19, 38, 'Warm beanie, perfect for winter.', '2024-06-05'),
(29, 20, 49, 'Stylish ring, very comfortable to wear.', '2024-06-10'),
(30, 21, 10, 'Nice t-shirt, good sun protection.', '2024-06-15'),
(31, 52, 2, 'Great shirt, perfect for summer weather.', '2024-06-22'),
(32, 53, 6, 'Amazing jacket, very warm and stylish.', '2024-06-27'),
(33, 54, 10, 'Comfortable t-shirt, good for outdoor activities.', '2024-07-02'),
(34, 55, 15, 'Beautiful sweater, excellent craftsmanship.', '2024-07-07'),
(35, 56, 20, 'Quality skirt, perfect fit.', '2024-07-12'),
(36, 57, 25, 'Cute necklace, my child loves it.', '2024-07-17'),
(37, 58, 30, 'Elegant shoes, perfect for special occasions.', '2024-07-22'),
(38, 59, 35, 'Nice boots, long-lasting quality.', '2024-07-27'),
(39, 60, 40, 'Interesting scarf, great patterns.', '2024-08-01');

INSERT INTO `Cart` (`cart_id`, `client_id`, `product_id`, `Quantity`) VALUES
(1, 1, 7, 1),
(2, 2, 4, 1),
(3, 3, 8, 1),
(4, 4, 2, 2),
(5, 5, 9, 1),
(6, 6, 1, 1),
(7, 7, 5, 1),
(8, 8, 10, 3),
(9, 9, 3, 2),
(10, 10, 6, 1),
(11, 12, 13, 1),
(12, 13, 18, 2),
(13, 14, 23, 1),
(14, 15, 28, 1),
(15, 16, 33, 3),
(16, 17, 38, 1),
(17, 18, 43, 2),
(18, 19, 48, 1),
(19, 20, 3, 1),
(20, 21, 8, 1),
(21, 22, 13, 2),
(22, 23, 18, 1),
(23, 24, 23, 1),
(24, 25, 28, 1),
(25, 26, 33, 2),
(26, 27, 38, 1),
(27, 28, 43, 1),
(28, 29, 48, 3),
(29, 30, 4, 1),
(30, 31, 9, 2),
(31, 32, 14, 1),
(32, 33, 19, 1),
(33, 34, 24, 2),
(34, 35, 29, 1),
(35, 36, 34, 1),
(36, 37, 39, 1),
(37, 38, 44, 3),
(38, 39, 49, 1),
(39, 40, 5, 2),
(40, 41, 10, 1),
(41, 42, 15, 1),
(42, 43, 20, 2),
(43, 44, 25, 1),
(44, 45, 30, 1),
(45, 46, 35, 1),
(46, 47, 40, 3),
(47, 48, 45, 1),
(48, 49, 50, 2),
(49, 50, 2, 1),
(50, 51, 7, 1);

INSERT INTO `Order_Items` (`order_items_id`, `order_id`, `product_id`, `Price`, `Quantity`) VALUES
(1, 1, 1, 149.99, 1),
(2, 2, 5, 89.99, 1),
(3, 3, 9, 59.99, 1),
(4, 4, 13, 119.99, 1),
(5, 5, 17, 79.99, 1),
(6, 6, 21, 199.99, 1),
(7, 7, 25, 29.99, 1),
(8, 8, 29, 159.99, 1),
(9, 9, 33, 129.99, 1),
(10, 10, 37, 39.99, 1),
(11, 11, 41, 299.99, 1),
(12, 12, 52, 39.99, 2),
(13, 13, 48, 159.99, 1),
(14, 14, 51, 69.99, 1),
(15, 15, 49, 49.99, 1),
(16, 16, 44, 599.99, 1),
(17, 17, 46, 149.99, 1),
(18, 18, 52, 39.99, 1),
(19, 19, 47, 79.99, 1),
(20, 20, 27, 29.99, 1),
(21, 21, 33, 99.99, 1),
(22, 22, 38, 24.99, 1),
(23, 23, 48, 239.99, 1),
(24, 24, 46, 149.99, 1),
(25, 25, 42, 79.99, 1),
(26, 26, 41, 299.99, 1),
(27, 27, 35, 29.99, 1),
(28, 28, 44, 599.99, 1),
(29, 29, 50, 89.99, 1),
(30, 30, 27, 29.99, 3),
(31, 31, 21, 199.99, 1),
(32, 32, 44, 599.99, 1),
(33, 33, 51, 69.99, 2),
(34, 34, 49, 49.99, 1);

COMMIT;

UPDATE Client
SET Email = 'newemail@example.com',
    Phone_number = '+1-555-0123',
    Address = '123 New Street, City, State'
WHERE client_id = 1;

UPDATE Product
SET Price = 89.99,
    Stock = Stock + 50
WHERE SKU = 'SHIRT001';

UPDATE Orders
SET Completion_date = date('now')
WHERE order_id = 15;

UPDATE Product
SET Stock = Stock + 100
WHERE Stock < 10;

DELETE FROM Cart
WHERE client_id = 5;

DELETE FROM Wishlist
WHERE wishlist_id IN (
    SELECT w.wishlist_id
    FROM Wishlist w
    JOIN Client c ON w.client_id = c.client_id
    WHERE date('now', '-365 days') > '2023-01-01'
);

DELETE FROM Product
WHERE Stock = 0 AND product_id NOT IN (
    SELECT DISTINCT product_id FROM Order_Items
);

DELETE FROM Orders
WHERE Total_price = 0 AND Completion_date IS NULL;

DELETE FROM Rating
WHERE product_id NOT IN (SELECT product_id FROM Product);

-- 1. List all clients with their contact information
SELECT First_name, Last_name, Email, Phone_number 
FROM Client;

-- 2. Find all products with price greater than $100
SELECT SKU, Description, Price 
FROM Product 
WHERE Price > 100;

-- 3. Count total number of products in each category
SELECT c.Category_name, COUNT(p.product_id) as Product_Count
FROM Category c
LEFT JOIN Product p ON c.category_id = p.category_id
GROUP BY c.category_id, c.Category_name;

-- 4. List all orders completed in February 2024
SELECT order_id, client_id, Completion_date, Total_price
FROM Orders
WHERE Completion_date LIKE '2024-02%';

-- 5. Find products with stock less than 25 units
SELECT SKU, Description, Stock, Price
FROM Product
WHERE Stock < 25;

-- 6. Show client names with their total order amounts
SELECT c.First_name, c.Last_name, SUM(o.Total_price) as Total_Spent
FROM Client c
JOIN Orders o ON c.client_id = o.client_id
GROUP BY c.client_id, c.First_name, c.Last_name
ORDER BY Total_Spent DESC;

-- 7. List products that have been rated and their average rating
SELECT p.SKU, p.Description, AVG(r.Value) as Avg_Rating, COUNT(r.rating_id) as Rating_Count
FROM Product p
JOIN Rating r ON p.product_id = r.product_id
GROUP BY p.product_id, p.SKU, p.Description
HAVING COUNT(r.rating_id) > 0;

-- 8. Find clients who have items in their cart but haven't placed an order
SELECT DISTINCT c.First_name, c.Last_name, c.Email
FROM Client c
JOIN Cart cart ON c.client_id = cart.client_id
LEFT JOIN Orders o ON c.client_id = o.client_id
WHERE o.order_id IS NULL;

-- 9. Show payment details with corresponding client information
SELECT c.First_name, c.Last_name, p.Payment_date, p.Amount, p.Card_type
FROM Client c
JOIN Invoice i ON c.client_id = i.client_id
JOIN Payment p ON i.invoice_id = p.invoice_id
ORDER BY p.Payment_date DESC;

-- 10. List top 3 most expensive products in each category
SELECT *
FROM (
    SELECT c.Category_name, p.SKU, p.Description, p.Price,
           ROW_NUMBER() OVER (PARTITION BY c.category_id ORDER BY p.Price DESC) as rn
    FROM Category c
    JOIN Product p ON c.category_id = p.category_id
) ranked
WHERE rn <= 3;

-- 11. Find clients who have both made purchases and left comments
SELECT c.First_name, c.Last_name
FROM Client c
WHERE EXISTS (SELECT 1 FROM Orders o WHERE o.client_id = c.client_id)
  AND EXISTS (SELECT 1 FROM Comment com WHERE com.client_id = c.client_id);

-- 12. Calculate total revenue by month
SELECT strftime('%Y-%m', o.Completion_date) as Month, 
       SUM(o.Total_price) as Monthly_Revenue,
       COUNT(o.order_id) as Orders_Count
FROM Orders o
WHERE o.Completion_date IS NOT NULL
GROUP BY strftime('%Y-%m', o.Completion_date)
ORDER BY Month;

-- 13. Complex join with multiple conditions - Show clients with their order details and transport info
SELECT c.First_name, c.Last_name, o.order_id, o.Total_price, o.Completion_date,
       t.Transport_date, t.City, t.Country,
       oi.product_id, p.SKU, oi.Quantity, oi.Price
FROM Client c
JOIN Orders o ON c.client_id = o.client_id
JOIN Transport t ON c.client_id = t.client_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Product p ON oi.product_id = p.product_id
WHERE o.Completion_date = t.Transport_date
ORDER BY c.Last_name, o.order_id;

-- 14. UNION - Combine products in cart and wishlist for each client
SELECT c.First_name, c.Last_name, p.SKU, p.Description, 'Cart' as List_Type, cart.Quantity
FROM Client c
JOIN Cart cart ON c.client_id = cart.client_id
JOIN Product p ON cart.product_id = p.product_id
UNION ALL
SELECT c.First_name, c.Last_name, p.SKU, p.Description, 'Wishlist' as List_Type, NULL as Quantity
FROM Client c
JOIN Wishlist w ON c.client_id = w.client_id
JOIN Product p ON w.product_id = p.product_id
ORDER BY First_name, Last_name, List_Type;

-- 15. Subquery with aggregation - Find clients who spent more than average
SELECT c.First_name, c.Last_name, total_spent.Total
FROM Client c
JOIN (
    SELECT client_id, SUM(Total_price) as Total
    FROM Orders
    GROUP BY client_id
) total_spent ON c.client_id = total_spent.client_id
WHERE total_spent.Total > (
    SELECT AVG(client_total)
    FROM (
        SELECT SUM(Total_price) as client_total
        FROM Orders
        GROUP BY client_id
    )
);

-- 16. Find products that are both highly rated (>=4) and in stock (>20)
SELECT p.SKU, p.Description
FROM Product p
JOIN Rating r ON p.product_id = r.product_id
WHERE r.Value >= 4
INTERSECT
SELECT p.SKU, p.Description
FROM Product p
WHERE p.Stock > 20;

-- 17. Rank clients by spending with running total
SELECT c.First_name, c.Last_name, client_spending.Total_Spent,
       RANK() OVER (ORDER BY client_spending.Total_Spent DESC) as Spending_Rank,
       SUM(client_spending.Total_Spent) OVER (ORDER BY client_spending.Total_Spent DESC 
                                              ROWS UNBOUNDED PRECEDING) as Running_Total
FROM Client c
JOIN (
    SELECT client_id, SUM(Total_price) as Total_Spent
    FROM Orders
    GROUP BY client_id
) client_spending ON c.client_id = client_spending.client_id;

-- 18. Products never ordered
SELECT p.SKU, p.Description, p.Price
FROM Product p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- 19. Clients with above-average spending in their country
SELECT c.First_name, c.Last_name, t.Country, client_total.Total_Spent
FROM Client c
JOIN Transport t ON c.client_id = t.client_id
JOIN (
    SELECT client_id, SUM(Total_price) as Total_Spent
    FROM Orders
    GROUP BY client_id
) client_total ON c.client_id = client_total.client_id
WHERE client_total.Total_Spent > (
    SELECT AVG(country_avg.avg_spending)
    FROM (
        SELECT t2.Country, AVG(o2.Total_price) as avg_spending
        FROM Transport t2
        JOIN Orders o2 ON t2.client_id = o2.client_id
        WHERE t2.Country = t.Country
        GROUP BY t2.Country
    ) country_avg
);

-- 20. Report for categories
SELECT 
    category_stats.Category_name,
    category_stats.Total_Revenue,
    category_stats.Avg_Rating,
    category_stats.Products_Sold,
    category_stats.Unique_Buyers,
    CASE 
        WHEN category_stats.Avg_Rating >= 4.5 THEN 'Excellent'
        WHEN category_stats.Avg_Rating >= 4.0 THEN 'Good'
        WHEN category_stats.Avg_Rating >= 3.0 THEN 'Fair'
        ELSE 'Poor'
    END as Rating_Category
FROM (
    SELECT 
        cat.Category_name,
        COALESCE(SUM(oi.Price * oi.Quantity), 0) as Total_Revenue,
        COALESCE(AVG(r.Value), 0) as Avg_Rating,
        COALESCE(SUM(oi.Quantity), 0) as Products_Sold,
        COUNT(DISTINCT o.client_id) as Unique_Buyers
    FROM Category cat
    LEFT JOIN Product p ON cat.category_id = p.category_id
    LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
    LEFT JOIN Orders o ON oi.order_id = o.order_id
    LEFT JOIN Rating r ON p.product_id = r.product_id
    GROUP BY cat.category_id, cat.Category_name
) category_stats
ORDER BY category_stats.Total_Revenue DESC;

-- 21. Get all VIP Gold customers for special promotions
SELECT 
    Full_Name,
    Email,
    Phone_number,
    Total_Spent,
    Total_Orders,
    VIP_Level,
    Customer_Status
FROM High_Spending_Clients 
WHERE VIP_Level = 'VIP Gold'
ORDER BY Total_Spent DESC;

-- 22. Find all high spenders who haven't ordered recently
SELECT 
    Full_Name,
    Email,
    Total_Spent,
    Last_Order_Date,
    Customer_Status
FROM High_Spending_Clients 
WHERE Customer_Status = 'Long-time Customer'
ORDER BY Total_Spent DESC;

-- 23. Critical inventory items that need immediate restocking
SELECT 
    Product_Name,
    Category_name,
    SKU,
    Current_Available_Stock,
    Stock_Alert,
    Suggested_Reorder_Quantity,
    Total_Revenue_Generated
FROM Inventory_After_Orders 
WHERE Stock_Alert IN ('OUT OF STOCK', 'CRITICAL - REORDER NOW')
ORDER BY Total_Revenue_Generated DESC;

-- 24. Best performing products with good stock levels
SELECT 
    Product_Name,
    Category_name,
    Current_Available_Stock,
    Total_Revenue_Generated,
    Number_of_Orders_Containing_Item,
    Inventory_Turnover_Percentage
FROM Inventory_After_Orders 
WHERE Stock_Alert = 'ADEQUATE STOCK' 
  AND Total_Revenue_Generated > 100
ORDER BY Total_Revenue_Generated DESC;

-- 25. Inventory turnover analysis
SELECT 
    Category_name,
    COUNT(*) as Products_in_Category,
    AVG(Inventory_Turnover_Percentage) as Avg_Turnover_Rate,
    SUM(CASE WHEN Stock_Alert IN ('OUT OF STOCK', 'CRITICAL - REORDER NOW') THEN 1 ELSE 0 END) as Critical_Items,
    SUM(Current_Available_Stock) as Total_Available_Units
FROM Inventory_After_Orders 
GROUP BY Category_name
ORDER BY Avg_Turnover_Rate DESC;

-- 26. Revenue impact of low stock items
SELECT 
    SUM(CASE WHEN Stock_Alert IN ('OUT OF STOCK', 'CRITICAL - REORDER NOW') 
             THEN Total_Revenue_Generated ELSE 0 END) as Revenue_at_Risk,
    SUM(Total_Revenue_Generated) as Total_Revenue,
    ROUND(
        (SUM(CASE WHEN Stock_Alert IN ('OUT OF STOCK', 'CRITICAL - REORDER NOW') 
                  THEN Total_Revenue_Generated ELSE 0 END) * 100.0 / 
         SUM(Total_Revenue_Generated)), 2
    ) as Percentage_Revenue_at_Risk
FROM Inventory_After_Orders;

-- 27. High spenders and their favorite low-stock products
SELECT DISTINCT
    hsc.Full_Name,
    hsc.Total_Spent,
    hsc.VIP_Level,
    iao.Product_Name,
    iao.Current_Available_Stock,
    iao.Stock_Alert
FROM High_Spending_Clients hsc
INNER JOIN `Orders` o ON hsc.client_id = o.client_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
INNER JOIN Inventory_After_Orders iao ON oi.product_id = iao.product_id
WHERE iao.Stock_Alert IN ('LOW STOCK', 'CRITICAL - REORDER NOW')
ORDER BY hsc.Total_Spent DESC, iao.Current_Available_Stock ASC;