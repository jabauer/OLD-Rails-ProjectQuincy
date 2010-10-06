# This rake task loads data into the Assignments table from the file
# pq_eafsd/data/smith_study.csv  This is a standard CSV file, separated by commas
# The fields in this file are in the following order: 
# state name, location name, start year, start certain, end year, end certain, assignment title name, individual name.
# If you use a different type of csv file or put your data in another order
# you will HAVE to modify this script for it to work.

desc "This is a task to load the data from the Smith Study (located in /pq_eafsd/data/smith_study.csv) into the Assignments table"
task :load_assignments => :environment do

#This script works in multiple steps 
#In order to load the assignments table, the script needs to find the ids for Location, AssignmentTitle, and Individual.
#Given the nature of the study, Individual objects needed to be created in order for those ids to be available.
#The variables i, l, and at each represent an instance of an object -- i for Individual, l for Location, and at for AssignmentType.
#Since data for Location and AssigmentTitle had already been loaded, l and at are simply given the appropriate values.
#i is there to receive the newly created Individuals.


#First the rake task deletes everything in the Assignments table to prevent duplicates.
#N.B. if you want to keep your previous data then comment out the next line.
Assignment.delete_all 

#Next the script locates the CSV file and reads it into an array
open(File.expand_path(File.dirname(__FILE__) + "../../../data/smith_study.csv")).each { |x| 
    xarray = x.split(",")
    
    # The array reads as follows [0] = state name (not used), [1] = location name, [2] = start year, 
    # [3] = start certain, [4] = end year, [5] = end certain, [6] = assignment title name, [7] = individual name
    l = Location.find_by_name(xarray[1].chomp.strip)
    if l.nil?
      puts "#{xarray[1].chomp.strip} not found"
    end
#    puts l.id
    at = AssignmentTitle.find_by_name(xarray[6].chomp.strip)
      if at.nil?
        puts "#{xarray[6].chomp.strip} not found"
      end
    i = Individual.find_by_name(xarray[7].chomp.strip)
    if i.nil?
      i = Individual.create(:name => xarray[7].chomp.strip)
      i.save
    end
#    puts i.id


#Once all the appropriate ids have been created the assign variable is created to populate the Assignments table with the data from the study.

    assign = Assignment.create (:individual_id => i.id, :location_id => l.id, :assignment_title_id => at.id, 
                                :start_year => xarray[2].chomp.strip, :start_certain => xarray[3].chomp.strip, 
                                :end_year => xarray[4].chomp.strip, :end_certain =>xarray[5].chomp.strip)
    assign.save

}


end
