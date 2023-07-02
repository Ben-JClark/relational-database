insert into customer (fname, lname, homeAddress, email, phone) values ('John', 'Smith', '123 Main St, Anytown NZ', 'johnsmith@email.com', 5551234567)
insert into customer (fname, lname, homeAddress, email, phone) values ('Sarah', 'Johnson', '456 Elm St, Anytown NZ', 'sarahj@email.com', 5559876543)

insert into instructor (fname, lname, email, phone, available) values  ('Jane', 'Doe', 'janedoe@email.com', 5555551212, 'Mon-Fri, 9am-5pm')
insert into instructor(fname, lname, email, phone, available) values ('Mark', 'Johnson', 'markjohnson@email.com', 5551234567, 'Weekends, 9am-5pm')

insert into qualification (qualName, instructorID) values ('American Heart Association BLS Instructor', 100)
insert into qualification (qualName, instructorID) values ('Red Cross First Aid/CPR/AED', 101)
insert into qualification (qualName, instructorID) values ('First Aid/CPR/AED', 101)
insert into qualification (qualName, instructorID) values ('Wilderness First Responder Instructor', 100)


insert into course (courseName, courseDescription, duration, prerequisites, cost, qualName) values ('Advanced First Aid', 'A 3-day course that builds on the skills taught in the Basic First Aid course and covers advanced techniques for managing medical emergencies, such as heart attacks and strokes.', '3 days', 'Basic First Aid course completion', 400, 'First Aid/CPR/AED')
insert into course (courseName, courseDescription, duration, prerequisites, cost, qualName) values ('Wilderness First Aid', 'is a two-day specialized course designed to teach individuals how to respond to medical emergencies in remote or wilderness settings. The course covers the essential skills and techniques needed to assess, stabilize, and manage a variety of injuries and illnesses that may occur in the outdoors.', '2 days', 'None', 400, 'Wilderness First Responder Instructor')

insert into class (classDate, courseID, classLocation, capacity) values ('2023-01-15 15:00:00', 100, 'Anytown State Park', 15)
insert into class (classDate, courseID, classLocation, capacity) values ('2023/03/15 08:00:00', 101, 'Anytown Community Center', 20)

insert into purchaseOrder (orderDate, method, discount, customerID) values ('01/02/23', 'Credit Card', 25, 100)
insert into purchaseOrder (orderDate, method, discount, customerID) values ('01/03/23', 'Cash', 0, 101)

insert into equipment (equipmentName, equipmentDescription, price, stock, orderID) values ('First Aid Kit', 'A portable kit containing a range of essential first aid supplies, including bandages, gauze, antiseptic wipes, and more.', 50, 100, 100)
insert into equipment (equipmentName, equipmentDescription, price, stock, orderID) values ('Automated External Defibrillator (AED)', 'An easy-to-use device that can analyse the heart''s rhythm and deliver an electric shock to restore normal heartbeat in case of cardiac arrest.', 1500, 10, 101)

/* insert custom booked class */
insert into custBookClass (customerID,classID) values (100,100) /* changed id values*/
insert into custBookClass (customerID,classID) values (101,101)

/* insert custom enrolled class */
insert into custEnrolClass (customerID, classID, certified,mark, attended) values (100, 100 , 'no', 20,'yes') /* implement 1 for attendance */
insert into custEnrolClass (customerID, classID, certified,mark, attended) values (101, 101 , 'yes', 80,'yes')

/* insert instructor teached class */
insert into instrTeachClass (classID , instructorID) values (100,100)
insert into instrTeachClass (classID , instructorID) values (101,101)

/* insert order for class props */
insert into orderForCourse (orderID,courseID) values (100,101)
insert into orderForCourse (orderID,courseID) values (101,100)

/* insert class used equipments */
insert into classUsesEqu (classID,productName,quantity) values (101 ,'First Aid Kit' , 1)
insert into classUsesEqu (classID,productName,quantity)values (100 ,'Automated External Defibrillator (AED)' , 1)
