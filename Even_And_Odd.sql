#Even id e.g 2,4,6,8,
SELECT * FROM employee
         WHERE MOD(id,2)=0;

#Odd id e.g 1,3,5,7         
SELECT * FROM employee
         WHERE MOD(id,2)=1;