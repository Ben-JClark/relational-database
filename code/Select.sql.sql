-- Selects each class, showing course details, course attendance, supplies used, and if the class has been paid for.
select cl.id as 'Class id', co.courseName as 'Course name', cec.customerID as 'Customer enrolled id', ins.fname as 'Instructor teaching name', cue.productName as 'Equipment uses'
from class cl, course co, instructor ins, classUsesEqu cue, custEnrolClass cec where cec.attended = 'yes' order by cl.id DESC;

-- Select every column of every table
select DISTINCT cu.id as 'customer ID',cu.fname as 'Frist name', ofc.courseID as 'Course order course id', co.courseName as 'Course name', cbc.classID as 'Class booked id', cl.classDate as 'Class date and time', cec.Certified as 'Certified', po.id as 'Customer order id', qu.qualName as 'Instructor qualification', eq.equipmentName as 'Equipment Name'
from course co, class cl, customer cu, custEnrolClass cec, purchaseOrder po, qualification qu, custBookClass cbc, equipment eq, orderForCourse ofc order by cu.id DESC;