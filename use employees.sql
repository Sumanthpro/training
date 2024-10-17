use employees
SELECT *
from Departments
select *
from employees

create PROCEDURE sp_AddEmployee
@empid int,
@firstname varchar(max),
@lastname VARCHAR(max),
@departmentid int,
@salary decimal(18,2),
@hiredate DATE;

AS
begin
    begin TRANSACTION
    begin TRY
update Employees 
  set employeeid =@empid,firstname=@firstname,
      lastname=@lastname, departmentid=@departmentid,
      salary =@salary,hiredate=@hiredate
      where employeeid=@empid;
    end TRY
   begin CATCH
   if (select *
    from Employees
    where exists( select *
    from Employees
    where DepartmentID=@departmentid);)
   BEGIN
        ROLLBACK
    end 
   else 
   BEGIN
        print "No such Department exists"
    end
   end catch
    COMMIT TRANSACTION
END
