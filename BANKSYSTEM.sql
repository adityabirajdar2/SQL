 use banksystem;
create table BANK(
    -> bankname varchar(255),
    -> bankaddress varchar(255),
    -> bankid int primary key auto_increment,
    -> bankcode varchar(255));

	 create table ATM(
    -> atmid int auto_increment primary key,
    -> deposit BOOLEAN,
    -> withdraw BOOLEAN,
    -> checkbalance BOOLEAN,
    -> Accountbalance float,
    -> transactionid int, foreign key(transactionid) references transaction(transaction_id));

 create table transaction( transactionid int primary key auto_increment, transaction_date Date,transaction_time time,transaction_amount float not null,transaction_type varchar(255),account id int,
    -> foreign key(account id) references account(accountid));

 create table account(accountid int auto_increment primary key,
    -> accountno bigint,
    -> accountbalance float,
    -> accounttype varchar(255),
    -> customerid int, foreign key(customerid) references customer(id),
    -> bankid int, foreign key(bankid) references BANK(bankid));

	 alter table transaction drop current_balance;

	 alter table account modify accountno bigint unique;
INSERT INTO customer(customername,customeremail,customerpassword,customerphno,customercardno)VALUES('Aditya','adi@axis','adi@123',82080016,1122334);