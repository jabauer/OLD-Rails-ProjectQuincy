# This rake task populates the linking table in_states from data contained
# in the file /data/in_states_list.csv.  It is a standard CSV file, separated
# by commas and consisting of 2 data fields state name and location name (in that order).

# The script assumes that all the necessary state and location entities have already
# been loaded into the database and will abort if it finds any new data.
# If you want to populate the state and location tables while creating records in 
# the in_states table, look at the load_assignments rake task for options.

desc "This is a task to populate the linking table in_states from the file /data/in_states_list.csv"
task :load_in_states => :environment do
  
  #First the rake task deletes everything in the in_states table to prevent duplicates.
  #N.B. if you want to keep your previous data then comment out the next line.
  InState.delete_all
  
  #Next the script locates the CSV file and reads it into an array
  open(File.expand_path(File.dirname(__FILE__) + "../../../data/in_states_list.csv")).each { |x| 
      xarray = x.split(",")
      
      # The array reads as follows [0] = state name, [1] = location name
      # and gets the appropriate ID from the states and locations table
      s = State.find_by_name(xarray[0].chomp.strip)
      if s.nil?
        puts "#{xarray[0].chomp.strip} not found"
      end
      
      l = Location.find_by_name(xarray[1].chomp.strip)
      if l.nil?
        puts "#{xarray[1].chomp.strip} not found"
      end
      
      # Once all the ids have been fetched the inst variable is created 
      # to populate the in_states table
      
      inst = InState.create (:state_id => s.id, :location_id => l.id)
      inst.save
      
}

end