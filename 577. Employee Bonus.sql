# Write your MySQL query statement below
SELECT name, bonus FROM Employee e LEFT JOIN Bonus b ON e.empID = b.empId where bonus is null OR bonus<1000;
