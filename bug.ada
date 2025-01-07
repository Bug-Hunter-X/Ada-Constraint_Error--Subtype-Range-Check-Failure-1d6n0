procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X: My_Subtype := 1;
begin
   X := X + 1;
   if X > 10 then
      raise Constraint_Error;
   end if;
   X := X + 11; -- Error: This will cause a Constraint_Error
end Example;