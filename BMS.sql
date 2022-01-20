CREATE DATABASE bank_management_system;
USE bank_management_system;
CREATE TABLE customer_personal_info (
customer_id VARCHAR(5) NOT NULL PRIMARY KEY,
customer_name VARCHAR(25) NOT NULL,
date_of_birth DATE NOT NULL,
guardian_name VARCHAR(30) NOT NULL,
address TEXT NOT NULL,
contact_no BIGINT NOT NULL,
mail_id VARCHAR(20) NOT NULL,
gender CHAR(1) NOT NULL,
marital_status VARCHAR(10) NOT NULL,
identification_doc_type VARCHAR(20) NOT NULL,
id_doc_no VARCHAR(20) NOT NULL,
citizenship VARCHAR(20) NOT NULL );

CREATE TABLE customer_reference_no (
customer_id VARCHAR(5) NOT NULL,
reference_account_name VARCHAR(20) NOT NULL,
reference_account_no BIGINT(16) NOT NULL,
reference_account_address TEXT(50) NOT NULL,
relation VARCHAR(20) NOT NULL,
CONSTRAINT customer_reference_info_pk FOREIGN KEY (customer_id) references customer_personal_info(customer_id) );

CREATE TABLE bank_info (
ifsc_code VARCHAR(20) NOT NULL PRIMARY KEY,
bank_name VARCHAR(20) NOT NULL,
bank_branch VARCHAR(20) NOT NULL,
bank_address TEXT(50) NOT NULL );

CREATE TABLE account_info (
account_no BIGINT(10) NOT NULL PRIMARY KEY,
customer_id BIGINT NOT NULL,
account_type VARCHAR(15) NOT NULL,
registrtion_date DATE NOT NULL,
activation_date DATE NOT NULL,
ifsc_code VARCHAR(15) NOT NULL,
interest DECIMAL(7,2) NOT NULL,
initil_deposit BIGINT NOT NULL,
CONSTRAINT account_info_pers_fk FOREIGN KEY (customer_id) REFERENCES customer_personal_info (customer_id),
CONSTRAINT account_info_bank_fk FOREIGN KEY (ifsc_code) REFERENCES bank_info (ifsc_code) );

SHOW TABLES;

INSERT INTO customer_personal_info VALUES(
 '101A','SINDHU PRIYA','2001-10-02','BRAHMA REDDY','Nidamarru-Mangalagiri-door.no.1-15/1-AP',9402967567,'bspr456@gmail.com','F','unmarried','AADHAAR','5055 6478 8672','INDIA');
INSERT INTO customer_personal_info VALUES(
 '102B','RAHUL K', '1998-09-30','RAMESH K','door.no.3-10-Kothapet-Vijayawada-AP',9503457278,'rahul4@gmail.com','M','unmarried','AADHAAR','5055 7759 9832', 'INDIA');
 INSERT INTO customer_personal_info VALUES(
 '103C', 'PRUDHVI RAJ','1993-03-11','MAHALAKSHMI','door.no.02/15-RAJ NAGAR-HYDERABAD-TELANGANA',7836543543,'prud8hvi45@gmail.com','M','married','PAN CARD','EOP123J678','INDIA');

INSERT INTO customer_reference_no VALUES(
 '101A','SINDHU','1035783854635','Mangalagiri-old busstand-near temple-Guntur','PARENT');
INSERT INTO customer_reference_no VALUES(
'102B','MADHUPRIYA','107547634564','ramnagar-02/15-vijayawada','GUARDIAN');
INSERT INTO customer_reference_no VALUES(
 '103C','MOHAN RAJ','146374285758','door.no.03/1,autonagar street-near charminar-huderabad','PARENT');
 
INSERT INTO bank_info VALUES(
  'SBI0941748IN8841','SBI','MANGALAGIRI','house.no-3-old busstand-mangalagiri');
INSERT INTO bank_info VALUES(
  'IDBI4758894Y8580','IDBI','VIJAYAWADA','flat.n0-1,near njaneyaswami temple,2 town,vijayawada');
INSERT INTO bank_info VALUES(
  '5026HDFC3438580','HDFC','HYDERABAD','flat-5,old ramarao street-marutinagar-hyderabad');
  
INSERT INTO account_info VALUES(
  1074258561880,'101A''SAVINGS','2017-08-28','2017-09-15','SBI0941748IN8841',5,1000);
INSERT INTO account_info VALUES(  
  1472865850154,'102B','CURRENT','2019-12-21','2020-01-05','IDBI4758894Y8580',10.3,1500);
INSERT INTO account_info VALUES(  
  2472385951868,'103C','FIXED','2018-10-21','2018-11-30','5026HDFC3438580',10,2000);
  
  SHOW TABLES;
  SELECT*FROM customer_personal_info;
  SELECT*FROM customer_reference_no;
  SELECT*FROM bank_info;
  SELECT*FROM account_info;
  





