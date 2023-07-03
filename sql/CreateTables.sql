create table customer(
	id int IDENTITY(100,1),
	fname varchar(30) NOT NULL,
	lname varchar(30) NOT NULL, /*rest can be entered after course*/
	homeAddress varchar(100),
	email varchar(50),
	phone bigint,
	primary key (id)
)

create table instructor(
	id int IDENTITY(100,1),
	fname varchar(30) NOT NULL,
	lname varchar(30) NOT NULL,
	email varchar(50) NOT NULL,
	phone bigint NOT NULL,
	available varchar(50) NOT NULL,
	primary key (id)
)
create table qualification(
	qualName varchar(250) NOT NULL,
	instructorID int NOT NULL,
	primary key (qualName),
	foreign key (instructorID) references instructor
)

create table course(
	id int IDENTITY(100,1),
	courseName varchar(250) NOT NULL,
	courseDescription varchar(300), /*description up to 300 characters*/ 
	duration varchar(30) NOT NULL, /* num days */
	prerequisites varchar(255) NOT NULL, /* could be a long list of things*/
	cost decimal NOT NULL, 
	qualName varchar(250) NOT NULL, /*qualification required to teach*/
	primary key (id),
	foreign key (qualName) references qualification
)
create table purchaseOrder(
	id int IDENTITY(100,1),
	orderDate date NOT NULL,
	method varchar(30) NOT NULL,
	discount int, /* can be from 0-100 */
	customerID int NOT NULL,
	primary key (id),
	foreign key (customerID) references customer
)


create table equipment(
	equipmentName varchar(250) NOT NULL,
	equipmentDescription varchar(300),
	price decimal NOT NULL,
	stock int NOT NULL,
	orderID int NOT NULL,
	primary key (equipmentName ),
	foreign key (orderID) references purchaseOrder
)
create table class(
	id int IDENTITY(100,1),
	classDate smalldatetime NOT NULL, 
	courseID int NOT NULL,
	classLocation varchar(50) NOT NULL,
	capacity int,
	primary key (id),
	foreign key (courseID) references course
)

create table custBookClass (
	customerID int NOT NULL,
	classID int NOT NULL,
	primary key (customerID, classID),
	foreign key (customerID) references customer,
	foreign key (classID) references class
)

create table custEnrolClass(
	customerID int NOT NULL,
	classID int NOT NULL,
	Certified varchar(3),	/*yes or no*/
	mark int, 
	attended varchar(3),
	primary key (customerID, classID),
	foreign key (customerID) references customer,
	foreign key (classID) references class
)
create table classUsesEqu(
	classID int NOT NULL,
	productName varchar(250) NOT NULL,
	quantity int NOT NULL,
	primary key (classID, productName),
	foreign key (classID) references class,
	foreign key (productName) references equipment
)
create table instrTeachClass(
	classID int NOT NULL,
	instructorID int NOT NULL,
	primary key (classID, instructorID),
	foreign key (classID) references class,
	foreign key (instructorID) references instructor,
)
create table orderForCourse(
orderID int NOT NULL,
courseID int NOT NULL,
primary key (orderID, courseID),
foreign key (orderID) references purchaseOrder,
foreign key (courseID) references course
)
