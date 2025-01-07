procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X: My_Subtype := 1;
begin
   X := X + 1;
   begin
      X := X + 11; -- Potential error
   exception
      when Constraint_Error =>
         put_line("Constraint error occurred. X remains "+Integer'Image(X));
   end;
end Example;