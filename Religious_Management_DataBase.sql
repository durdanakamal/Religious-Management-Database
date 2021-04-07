-- ---------------------------------------------------------------Creating Tables
CREATE TABLE `Main_Religion` (
  `No_Of_Religion` int,
  `Name_Of_Religion` varchar(15),
  `Percentage` varchar(5),
  PRIMARY KEY (`No_Of_Religion`)
);

CREATE TABLE `Information` (
  `No_Of_Religion` int,
  `S_Of_Place` int,
  `Name_Of_Place` varchar(40),
  `Committee_N` int,
  PRIMARY KEY (`S_Of_Place`, `Committee_N`)
);

CREATE TABLE `Location` (
  `S_Of_Place` int,
  `Address` varchar(70),
  `Coordinate` varchar(50),
  `Place_Type` varchar(70)
);

CREATE TABLE `Committee_Details` (
  `Committee_N` int,
  `President_Name` varchar(15),
  `Secretary_Name` varchar(15),
  `Treasurer_Name` varchar(15),
  `Property_Manager` varchar(15),
  `Maintenance_Manager` varchar(15)
);

CREATE TABLE `Muslims_Prayer_Timing` (
  `No_Of_Religion` int,
  `Date` date,
  `Fajr` varchar(10),
  `Dhuhr` varchar(10),
  `Asr` varchar(10),
  `Maghrib` varchar(10),
  `Isha` varchar(10),
  `Sunrise` varchar(10)
);

CREATE TABLE `Hindus_Prayer_Timing` (
  `No_Of_Religion` int not null,
  `Durga_Puja` int,
  `Date` date
);


CREATE TABLE `Cristian_Prayer_Timing` (
  `No_Of_Religion` int,
  `Prayer` varchar(20),
  `Time` varchar(10)
);

CREATE TABLE `Bookshops` (
  `No_Of_Religion` int,
  `Shop_Name` varchar(70),
  `B_Location` varchar(90),
  `Open_closed_Time` varchar(20),
  `Phone_Number` varchar(15)
);

-- ---------------------------------------------------------------Insering Values into Tables

insert into main_religion
values(1,'Islam','83%'),
		(2,'Hinduism','16%'),
        (3,'Buddhists','0.6%'),
        (4,'Christians','0.4%');
        
insert into location
values(1,'Bagerhat - Khulna Rd, Bagerhat 9300, Bangladesh','22.6745068, 89.7418359','Mosque, Place Of Worship'), -- Shaat Gombuj Masjid
		(2,' University of Dhaka, Dhaka University Kendrio Jame Masjid, Dhaka','23.8697269, 90.4261152','Mosque, Place Of Worship'), -- DU Central Masjid
        (3,'Shaista Khan Road, Dhaka','23.8697269, 90.4261152','Mosque, Place Of Worship'), -- Lalbagh Shahi Masjid
        (4,'Faidabad Transmitter Link Road, 1230','23.8697269, 90.4261152','Mosque, Place Of Worship'), -- Baitur Rauf Jame Masjid
        (5,'Inner Service Road, Naya Bazaar, Cuttack, Odisha 753006, India','23.8697269, 90.4261152','Tample, Place Of Worship'), -- Sri Chaitanya Mandir
        (6,'Old Mymensingh Road, Kazi Nazrul Islam Ave, Dhaka 1000','23.8697269, 90.4261152','Tample, Place Of Worship'), -- Ramna Kali Temple
        (7,'Sompur Mahavihara','23.8697269, 90.4261152','Tample, Place Of Worship'), -- Paharpur Buddhist Monastery
        (8,'Shalban Vihara,City-Corporation 24no Word,Shalmanpur 3503','23.8697269, 90.4261152','Tample, Place Of Worship'), -- Mainamati Shalban Bihara
		(9,'Ishwarpur, Satkhira','23.8697269, 90.4261152','Tample, Place Of Worship'), -- Christ Church
        (10,'Kakrail Road-Ramna, Dhaka-1000, 1 Kakrail Road Kakrail Cir, Dhaka 1000','23.8697269, 90.4261152','Tample, Place Of Worship'); -- St. Mary's Cathedral

insert into information
values(1,1,'Shaat Gombuj Masjid',1),
		(1,2,'DU Central Masjid',2),
        (1,3,'Lalbagh Shahi Masjid',3),
        (1,4,'Baitur Rauf Jame Masjid',4),
        (2,5,'Sri Chaitanya Mandir',5),
        (2,6,'Ramna Kali Temple',6),
        (3,7,'Paharpur Buddhist Monastery',7),
        (3,8,'Mainamati Shalban Bihara',8),
        (4,9,'Christ Church',9),
        (4,10,'St. Marys Cathedral',10);
        
insert into committee_details
values(1,'Sazzad','Mushfique','Sakib','Raihan','Shakil'),
		(2,'Sani','Tanvir','Roni','Hridoy','Shamim'),
        (3,'Ratul','Razzak','Sajib','Sitol','Tumzid'),
        (4,'Fahim','Rakib','Rahat','Masum','Shanto'),
        (5,'Bijoy','Joy','Plabon','Auntu','Obak'),
        (6,'Anik','Kumar','Majumdar','Billal','Bishwas'),
        (7,'Roki','Protty','Hiron','Salmon','Sayem'),
        (8,'Shariar','Alamin','Salauddin','Khaled','Ashik'),
        (9,'Smith','Dihan','Robert','Pattison','Siddik'),
        (10,'George','Dclock','Michale','Jackson','Manna');
        
insert into muslims_prayer_timing
values(1,str_to_date('14-01-2021','%d-%m-%Y'),'5.00 AM','1.15 PM','4.45 PM','6.00 PM','7.45 PM','5.50 AM'),
		(1,str_to_date('15-01-2021','%d-%m-%Y'),'5.01 AM','1.15 PM','4.44 PM','6.01 PM','7.45 PM','5.48 AM'),
        (1,str_to_date('16-01-2021','%d-%m-%Y'),'5.02 AM','1.15 PM','4.44 PM','6.01 PM','7.46 PM','5.45 AM'),
        (1,str_to_date('17-01-2021','%d-%m-%Y'),'5.03 AM','1.15 PM','4.43 PM','6.03 PM','7.45 PM','5.45 AM'),
        (1,str_to_date('18-01-2021','%d-%m-%Y'),'5.03 AM','1.15 PM','4.42 PM','6.04 PM','7.45 PM','5.44 AM'),
        (1,str_to_date('19-01-2021','%d-%m-%Y'),'5.04 AM','1.15 PM','4.42 PM','6.05 PM','7.40 PM','5.42 AM'),
        (1,str_to_date('20-01-2021','%d-%m-%Y'),'5.05 AM','1.15 PM','4.40 PM','6.05 PM','7.40 PM','5.42 AM');
        
insert into hindus_prayer_timing
values(2,1,str_to_date('11-10-21','%d-%m-%Y')),
		(2,2,str_to_date('12-10-21','%d-%m-%Y')),
        (2,3,str_to_date('13-10-21','%d-%m-%Y')),
        (2,4,str_to_date('14-10-21','%d-%m-%Y')),
        (2,5,str_to_date('15-10-21','%d-%m-%Y'));
        
insert into cristian_prayer_timing
values(3,'Morning Prayer','6.00 AM'),
		(3,'Terce Of Mid Morning','9.00 AM'),
		(3,'Sext Prayer','12.00 PM'),
        (3,'Mid After Noon','3.00 PM');
        
insert into bookshops
values(1,'Ali Bookshop','Uttara-Sector-4','12 AM - 12 PM','011515462'),
		(1,'Vhai-Vhai Store','250 Airport - Dakshinkhan Rd','10 AM - 8 PM','022314586'),
        (1,'Al Furkan Islami Book Store','Bir Uttam Ziaur Rahman Rd','9 AM - 10 PM','011456785'),
        (2,'Boi Bichitra','Plot No-37, Shop No-48, SB. Plaza, Dhaka - Mymensingh Hwy, Dhaka 1230','12 AM - 12 PM','64686655'),
        (2,'Charcha Bookstore','House # 107 (Tarakunjo), Sher Shah Shuri Road, Dhaka 1207','8 AM - 8 PM','15796485'),
        (3,'Noor Book Store','84 Purana Paltan Line, Dhaka 1000','7 AM - 10 PM','34897512'),
        (4,'Bishwa Bichitra','Mirpur Rd, Dhaka 1205','12 AM - 12 PM','02369785');



-- select * from bookshops;
-- select * from committee_details;
-- select * from cristian_prayer_timing;
-- select * from hindus_prayer_timing;
-- select * from information;
-- select * from location;
-- select * from main_religion;
-- select * from muslims_prayer_timing;