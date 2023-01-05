INSERT INTO p(numero,n2) VALUES(400,20);

select * from p;
select numero,n2,(numero/n2) AS densidad from p;

SELECT SUM(NUMERO) from p 
where numero IN(100,102,120)

