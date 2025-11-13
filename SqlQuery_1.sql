CREATE DATABASE test
go

CREATE TABLE Role (

	role_name varchar(50) PRIMARY KEY,
	title varchar(50), 
	description varchar (50),
	rank int,
	base_salary decimal (10,2),
	percentage_YOE decimal (4,2),
	percentage_overtime decimal(4,2), 
	annual_balance int, 
	accidental_balance int

	)

CREATE TABLE Employee_Role (

	emp_ID int , 
	role_name varchar(50),
	FOREIGN KEY(emp_ID) REFERENCES Employee(emp_ID),
	FOREIGN KEY(role_name) REFERENCES Role(role_name)
	
	)

CREATE TABLE Role_existsIn_Department (

	department_name varchar(50),
	--FOREIGN KEY(department_name) REFERENCES DEPNAME--,
	Role_name varchar(50),
	FOREIGN KEY (Role_name) REFERENCES Role(role_name)

	)

CREATE TABLE Leave (

	request_ID int,
	date_of_request date,
	start_date date, 
	end_date date,
	--(end_date - start_date) AS num_days ,--
	final_approval_status varchar (50)

	)

GO

CREATE VIEW allEmployeeProfiles AS

SELECT employee_ID, first_name,last_name, gender, email, address, years_of_experience,
official_day_off,type_of_contract,employment_status,annual_balance, accidental_balance 

FROM Employee 