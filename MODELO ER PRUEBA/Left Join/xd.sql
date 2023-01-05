use bdplatzi;



SELECT a.author_id,a.name,a.nationality FROM authors AS a
WHERE author_id IN
(SELECT b.author_id FROM books AS B 
WHERE b.price >=10 and b.price<100); 

