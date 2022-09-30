/* 
 * Script to query sample data in the mysql database created
 * in the book_business.sql script.
 * Author: Tanner Papenfuss
 * Course: 1.125 Arch and Eng Software Systems
*/

--- Question 7.1. Books per author.
SELECT 		ba.authorId, a.firstName, a.lastName, 
			COUNT(ba.ISBN) as "Books per Author"
FROM 		bookAuthor ba
			INNER JOIN authors a
				ON ba.authorId = a.authorId
GROUP BY 	ba.authorId, a.firstName, a.lastName;

--- Question 7.2. Authors per book.
SELECT 		ba.ISBN, b.title, 
			COUNT(ba.authorId) as "Authors per book"
FROM 		bookAuthor ba
			INNER JOIN books b
				ON ba.ISBN = b.ISBN
GROUP BY 	ba.ISBN, b.title;

--- Question 7.3. Author royalties on a book.
SELECT 		ba.ISBN, b.title, 
			ROUND(SUM(ba.royalties),2) as "Royalties per book"
FROM 		bookAuthor ba
			INNER JOIN books b
				ON ba.ISBN = b.ISBN
GROUP BY 	ba.ISBN, b.title;

--- Question 7.4. Book royalties per author.
SELECT 		ba.authorId, a.firstName, a.lastName, 
			ba.royalties as "Royalties"
FROM 		bookAuthor ba
			INNER JOIN authors a
				ON ba.authorId = a.authorId
GROUP BY 	a.FirstName, ba.authorId, a.lastName, ba.royalties;

--- Question 7.5. Books in a genre.
SELECT 		g.genre, g.genreId, COUNT(bg.ISBN) as "Number of Books"
FROM 		genres g
            JOIN bookGenre bg
				ON g.genreId = bg.genreId
GROUP BY 	g.genre, g.genreId;

--- Question 7.6. Books published by a publisher.
SELECT 		p.publisherId, p.name, COUNT(b.ISBN) AS "Book Count"
FROM 		publishers p
            JOIN books b
				ON p.publisherId = b.publisherId
GROUP BY 	p.name, p.publisherId;

--- Question 7.7. Editors per book.
SELECT 		b.ISBN, b.title, COUNT(be.editorId) AS "Editor Count"
FROM 		books b
            JOIN bookEditor be
				ON b.ISBN  = be.ISBN
GROUP BY 	b.title, b.ISBN;

--- Question 7.8. Books per editor.
SELECT 		e.editorId, e.name, COUNT(be.ISBN) AS "Book Count"
FROM 		editors e
            JOIN bookEditor be
				ON e.editorId = be.editorId
GROUP BY 	e.name, e.editorId;

--- Question 7.9. Books in an order.
SELECT 		o.orderNo, COUNT(bo.ISBN) AS "Book Count"
FROM 		orders o
            JOIN bookOrder bo
				ON o.orderNo = bo.orderNo
GROUP BY 	o.orderNo;

--- Question 7.10. Orders for a book.
SELECT 		b.title, COUNT(bo.orderNo) AS "Order Count"
FROM 		books b
            JOIN bookOrder bo
				ON b.ISBN = bo.ISBN
GROUP BY 	b.title;

--- Question 7.11. Customer orders.
SELECT 		c.customerId, c.firstName, c.LastName, 
            co.orderNo
FROM 		customers c
            JOIN customerOrders co
				ON co.customerId = c.customerId;

--- Question 7.12. Orders per customer.
SELECT 		c.firstName, c.lastName, COUNT(co.orderNo) AS "Order Count"
FROM 		customers c
            JOIN customerOrders co
				ON c.customerId = co.customerId
GROUP BY 	c.firstName, c.lastName;