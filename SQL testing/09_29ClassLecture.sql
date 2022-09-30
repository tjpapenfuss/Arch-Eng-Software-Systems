USE education;
SELECT CollegeID, Name from Colleges;
-- WHERE City = 'Cambridge';

SELECT Students*1000 as 'Student Population' FROM Colleges;

SELECT 
FirstName, LastName, 
CONCAT(FirstName, " ", LastName) AS FullName
FROM Students;
 
SELECT 
FirstName, LastName, BirthDate,
TIMESTAMPDIFF(year, BirthDate, now()) AS Age
FROM Students;

SELECT * FROM Students WHERE Phone IS NULL;

SELECT * FROM Students WHERE FirstName LIKE 'An%';

SELECT s.StudentID, s.FirstName, s.LastName, c.CollegeID, c.Name
FROM Students s
INNER JOIN Colleges c
ON s.CollegeID = c.CollegeID;


