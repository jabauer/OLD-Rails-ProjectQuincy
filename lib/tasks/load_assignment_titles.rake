desc "this is a task to load data into the Assignment_Titles table"
task :load_assignment_titles =>:environment do

AssignmentTitle.delete_all
open(File.expand_path(File.dirname(__FILE__) + "../../../data/assignment_title_list.csv")).each { |x| 
    xarray = x.split(",")
    a = AssignmentType.find_by_name(xarray[1].chomp.strip)
    if a.nil?
      puts "#{xarray[1]} not found"
    else
      puts a
    end
    puts a.inspect
    puts a.id 
    
   assign = AssignmentTitle.create(:name => xarray[0].chomp.strip, :assignment_type_id => a.id) unless a.nil?
   puts a.inspect
   assign.save
   puts assign.inspect
}


end
