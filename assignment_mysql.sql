
-- Assignment MySQL:


-- 1. Count the number of Salespersons whose name begins with 'a'/'A'.

SELECT COUNT(*)
FROM SalesPeople
WHERE UPPER(Sname) LIKE 'A%';


-- 2. Display all the Salespersons whose all orders' worth is more than Rs. 2000.

SELECT DISTINCT SP.Snum, SP.Sname
FROM SalesPeople SP
JOIN Orders O ON SP.Snum = O.Snum
GROUP BY SP.Snum, SP.Sname
HAVING MIN(O.Amt) > 2000;


-- 3. Count the number of Salespersons belonging to New York.

SELECT COUNT(*)
FROM SalesPeople
WHERE City = 'Newyork';


-- 4. Display the number of Salespeople belonging to London and belonging to Paris.

SELECT City, COUNT(*)
FROM SalesPeople
WHERE City IN ('London', 'Paris')
GROUP BY City;


-- 5. Display the number of orders taken by each Salesperson and their date of orders.

SELECT SP.Snum, SP.Sname, COUNT(O.Onum) AS OrderCount, O.Odate
FROM SalesPeople SP
LEFT JOIN Orders O ON SP.Snum = O.Snum
GROUP BY SP.Snum, SP.Sname, O.Odate;