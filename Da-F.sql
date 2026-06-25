use college;
select * FROM Studenttt;

# transactions and autocommit
/*every query treated as a transaction and is commited automatically  
if we off auto commit we can explicitlly commit or rollback
 */
 
 SET autocommit = 0; # off 
 set autocommit = 1; # on
 
 UPDATE Studenttt
 SET name = Anil where rollno = 101;
 
 ROLLBACK;            # if not happy
 commit;              #if happy with changes 



