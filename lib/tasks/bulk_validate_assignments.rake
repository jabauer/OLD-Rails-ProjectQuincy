=begin
This task will validate all the assignment records loaded from the William B. Smith Study.
These records were bulk loaded earlier, before the validation system was established, so now
they need to be validated all at once.  It helps that (at the moment) all the assigment records
come from this one study.

Of course, this script can be modified to bulk validate any set of records desired.
See the line-by-line comments for how you would need to modify the code, to fit your
specific needs.
=end

desc "this is a task to bulk validate all the records in the assignment table back to their original source"
task :bulk_validate_assignments => :environment do
  
  #If you need to delete all previous validations, uncomment the next line
  #Validation.delete_all
  
  #First find the user who is in charge of the bulk validation (this should be you:~)
  u = User.find_by_name("Jean Bauer")
  
  #Then find the citation which will apply to all the records being bulk-validated
  c = Citation.find_by_title("America's diplomats and consuls of 1776-1865")
  
  #Then for each assignment record, create a validation record of entity_type "assignment" and with an entity_key
  #that matches the id of that assignment records.  Link to the appropriate user and citation using the variables
  #defined above, and fill out the supports field with either "TRUE" or "FALSE"
  
  #N.B. this code will create a validation record for EVERY assignment record, if you need to bulk load a 
  #sub-set of the assignment (or other table's) records, make sure you change the parameters!
  Assignment.all.each do |assign|
    v = Validation.create(:entity_type => "assignment", :entity_key => assign.id, :supports => "TRUE", :user_id => u.id, :citation_id => c.id)
    
   #to test before you save, uncomment the next line
   #puts v.inspect
   
   #until you know everything works, make sure the next line is commented out!
   v.save
   
  end
end