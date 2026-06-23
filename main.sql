create database market_stall_registration_system                       ---creating database-------

------------creating traders table------------------
create table traders (
    Traders_ID int auto_increment primary key,
    First_Name varchar(50),
    Last_Name varchar(50),
    Gender varchar(50),
    Date_Of_Birth date,
    Email varchar(50),
    Phone varchar(50)
);

----------creating market_stall tabble----------------
create table market_stalls (
    Stall_ID int auto_increment primary key,
    Market_Type varchar(50),
    Stall_Location varchar(50),   455.66
    Stall_Price decimal(5,2),
    Stall_Size varchar(50),
    Traders_ID int,
    foreign key (Traders_ID) references traders(Traders_ID)
);

----------creating stall_allocations table------------
create table stall_allocations (
    Allocation_ID int auto_increment primary key,
    Allocation_Date date,
    Allocation_Venue varchar(50),
    Stall_ID int,
    Traders_ID int,
    foreign key (Stall_ID) references market_stalls(Stall_ID),
    foreign key (Traders_ID) references traders(Traders_ID)
);

-----------creating usage_records_table---------------
create table usage_records (
    Record_ID int auto_increment primary key,
    Usage_Date date,
    End_Date date,
    Usage_Duration varchar(50),
    Payment_Method varchar(50),
    Allocation_ID int,
    foreign key (Allocation_ID) references stall_allocations(Allocation_ID)
);

--------------inserting into market_stalls---------------
insert into market_stalls (
      Market_Type, Stall_Location, Stall_Price, Stall_Size, Traders_ID)
values
('Large', '19 West Street', 900.00, 'W.S', 1),
('Large', '20 West Street', 900.00, 'P', 2),
('Small', '21 West Street', 300.00, 'R', 3),
('Medium', '22 West Street', 600.00, 'W.S.', 4),
('Large', '23 West Street', 900.00, 'P', 5),
('Small', '24 Cleanse Road', 300.00, 'R', 6),
('Large', '25 Cleanse Road', 900.00, 'W.S.', 7),
('Large', '26 Cleanse Road', 900.00, 'P', 8),
('Small', '27 Cleanse Road', 300.00, 'R', 9),
('Small', '28 Cleanse Road', 300.00, 'W.S.', 10),
('Large', '29 Cleanse Road', 900.00, 'P', 11),
('Small', '30 Dump Lane', 300.00, 'R', 12),
('Medium', '31 Dump Lane', 600.00, 'W.S.', 13),
('Large', '32 Dump Lane', 900.00, 'P', 14),
('Small', '33 Dump Lane', 300.00, 'R', 15),
('Large', '34 Dump Lane', 900.00, 'W.S.', 16),
('Large', '35 Harvest Junction', 900.00, 'P', 17),
('Small', '36 Harvest Junction', 300.00, 'R', 18),
('Medium', '37 Harvest Junction', 600.00, 'W.S.', 19),
('Large', '38 Harvest Junction', 900.00, 'P', 20),
('Small', '39 Harvest Junction', 300.00, 'R', 21),
('Large', '40 Harvest Junction', 900.00, 'P', 22),
('Medium', '41 Harvest Junction', 600.00, 'W.S.', 23),
('Small', '42 Harvest Junction', 300.00, 'R', 24),
('Large', '43 Harvest Junction', 900.00, 'P', 25);

--------------inserting into stall allocations--------------
insert into stall_allocations (
      Allocation_Date, Allocation_Venue, Stall_ID, Traders_ID)
values
('2026-01-10', 'Main Hall', 1, 1),
('2026-01-11', 'Main Hall', 2, 2),
('2026-01-12', 'North Wing', 3, 3),
('2026-01-13', 'South Wing', 4, 4),
('2026-01-14', 'Main Hall', 5, 5),
('2026-01-15', 'East Wing', 6, 6),
('2026-01-16', 'West Wing', 7, 7),
('2026-01-17', 'Main Hall', 8, 8),
('2026-01-18', 'North Wing', 9, 9),
('2026-01-19', 'South Wing', 10, 10),
('2026-01-20', 'Main Hall', 11, 11),
('2026-01-21', 'East Wing', 12, 12),
('2026-01-22', 'West Wing', 13, 13),
('2026-01-23', 'Main Hall', 14, 14),
('2026-01-24', 'North Wing', 15, 15),
('2026-01-25', 'South Wing', 16, 16),
('2026-01-26', 'Main Hall', 17, 17),
('2026-01-27', 'East Wing', 18, 18),
('2026-01-28', 'West Wing', 19, 19),
('2026-01-29', 'Main Hall', 20, 20),
('2026-01-30', 'North Wing', 21, 21),
('2026-01-31', 'South Wing', 22, 22),
('2026-02-01', 'East Wing', 23, 23),
('2026-02-02', 'West Wing', 24, 24),
('2026-02-03', 'Main Hall', 25, 25);


-----------------inserting inro traders--------------
insert into traders (
      First_Name, Last_Name, Gender, Date_Of_Birth, Email, Phone)
values
('Fatmata', 'Sesay', 'F', '2001-03-22', 'fatmata.sesay@email.com', '077234567'),
('Ibrahim', 'Bangura', 'M', '1999-07-10', 'ibrahim.bangura@email.com', '078345678'),
('Hawa', 'Koroma', 'F', '2002-09-05', 'hawa.koroma@email.com', '079456789'),
('Abdul', 'Kanu', 'M', '1998-12-18', 'abdul.kanu@email.com', '075567890'),
('Mabinty', 'Turay', 'F', '2001-05-14', 'mabinty.turay@email.com', '076678901'),
('Alhaji', 'Conteh', 'M', '2000-08-30', 'alhaji.conteh@email.com', '077789012'),
('Mariama', 'Jalloh', 'F', '2003-02-11', 'mariama.jalloh@email.com', '078890123'),
('Sorie', 'Fofanah', 'M', '1997-11-27', 'sorie.fofanah@email.com', '079901234'),
('Kadiatu', 'Mansaray', 'F', '2002-06-19', 'kadiatu.mansaray@email.com', '075012345'),
('Alpha', 'Bah', 'M', '1999-04-08', 'alpha.bah@email.com', '076123450'),
('Rugiatu', 'Kargbo', 'F', '2001-10-25', 'rugiatu.kargbo@email.com', '077234561'),
('Amadu', 'Tarawallie', 'M', '1998-01-09', 'amadu.tarawallie@email.com', '078345672'),
('Isatu', 'Kamara', 'F', '2003-07-17', 'isatu.kamara@email.com', '079456783'),
('Mustapha', 'Sesay', 'M', '2000-12-03', 'mustapha.sesay@email.com', '075567894'),
('Adama', 'Bangura', 'F', '2002-04-21', 'adama.bangura@email.com', '076678905'),
('Saidu', 'Koroma', 'M', '1997-09-13', 'saidu.koroma@email.com', '077789016'),
('Aminata', 'Kanu', 'F', '2001-11-29', 'aminata.kanu@email.com', '078890127'),
('Momoh', 'Turay', 'M', '1999-02-06', 'momoh.turay@email.com', '079901238'),
('Kadijatu', 'Conteh', 'F', '2003-08-24', 'kadijatu.conteh@email.com', '075012349'),
('Abu', 'Bakar', 'M', '2008-01-11', 'Abu.Bakar@gmail.com', '031750022'),
('Joseph', 'Kamara', 'M', '1998-05-12', 'joseph.kamara@email.com', '076111111'),
('Zainab', 'Sesay', 'F', '2000-08-21', 'zainab.sesay@email.com', '077222222'),
('Musa', 'Bangura', 'M', '1997-03-15', 'musa.bangura@email.com', '078333333'),
('Aisha', 'Koroma', 'F', '2001-11-09', 'aisha.koroma@email.com', '079444444'),
('Abubakarr', 'Kanu', 'M', '1999-01-28', 'abubakarr.kanu@email.com', '075555555');

-------------inserting into usage_records---------------
insert into usage_records (
      Usage_Duration, Payment_Method, Usage_Date, End_Date, Allocation_ID)
values
('3 Days', 'Cash', '2026-01-10', '2026-01-13', 1),
('2 Days', 'Mobile Money', '2026-01-11', '2026-01-13', 2),
('5 Days', 'Check', '2026-01-12', '2026-01-17', 3),
('1 Day', 'Bank Transfer', '2026-01-13', '2026-01-14', 4),
('4 Days', 'Cash', '2026-01-14', '2026-01-18', 5),
('2 Days', 'Mobile Money', '2026-01-15', '2026-01-17', 6),
('6 Days', 'Check', '2026-01-16', '2026-01-22', 7),
('3 Days', 'Bank Transfer', '2026-01-17', '2026-01-20', 8),
('2 Days', 'Cash', '2026-01-18', '2026-01-20', 9),
('5 Days', 'Mobile Money', '2026-01-19', '2026-01-24', 10),
('1 Day', 'Check', '2026-01-20', '2026-01-21', 11),
('3 Days', 'Bank Transfer', '2026-01-21', '2026-01-24', 12),
('4 Days', 'Cash', '2026-01-22', '2026-01-26', 13),
('2 Days', 'Mobile Money', '2026-01-23', '2026-01-25', 14),
('5 Days', 'Check', '2026-01-24', '2026-01-29', 15),
('3 Days', 'Bank Transfer', '2026-01-25', '2026-01-28', 16),
('2 Days', 'Cash', '2026-01-26', '2026-01-28', 17),
('4 Days', 'Mobile Money', '2026-01-27', '2026-01-31', 18),
('1 Day', 'Check', '2026-01-28', '2026-01-29', 19),
('3 Days', 'Bank Transfer', '2026-01-29', '2026-02-01', 20),
('2 Days', 'Mobile Money', '2026-02-01', '2026-02-03', 21),
('3 Days', 'Cash', '2026-02-02', '2026-02-05', 22),
('4 Days', 'Bank Transfer', '2026-02-03', '2026-02-07', 23),
('1 Day', 'Check', '2026-02-04', '2026-02-05', 24),
('5 Days', 'Cash', '2026-02-05', '2026-02-10', 25);