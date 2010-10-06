desc "this is a task to load data into the States table"
task :load_states =>:environment do

#this task requires a csv file (actually separated by commas) consisting of two columns of information 
#IN THIS ORDER: state name and continent name

#first the rake tasks deletes whatever data is currently in the States table to ensure there are no duplicates
State.delete_all
open(File.expand_path(File.dirname(__FILE__) + "../../../data/state_list.csv")).each { |x| 
    #this command reads the file into an array 
    #the file is a standard csv file, so the fields are separated by commas
    xarray = x.split(",") 
    
    #this locates the appropriate id for the continent on which the state is located
    #if it cannot find the continent the script creates one
    c = Continent.find_by_name(xarray[1].chomp.strip)
    if c.nil?
      puts "#{xarray[1]} not found"
    else
      puts c
    end
    puts c.inspect
    puts c.id 
  
  
  #now the information is loaded into the table, just name and continent id  
   state = State.create(:name => xarray[0].chomp.strip, :continent_id => c.id) unless c.nil?
   puts c.inspect
   state.save
   puts state.inspect
}


end
