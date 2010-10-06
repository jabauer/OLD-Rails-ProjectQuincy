# This rake task loads data into the locations table from the file
# pq_eafsd/data/locations_list.csv  This is NOT a standard CSV file:
# it is separated by "|" rather than commas.
# The fields in this file are in the following order: name, latitude, longitude, notes.
# Latitude and longitude are measured in decimal degrees NOT degrees, minutes seconds.
# If you use a different type of csv file or put your data in another order
# you will HAVE to modify this script for it to work.

desc "this is a task to load data into the Locations table"
task :load_locations =>:environment do

  #First the rake task deletes everything in the Locations table to prevent duplicates.
  #N.B. if you want to keep your previous data then comment out the next line.
  Location.delete_all
  
  #Next the script locates the CSV file and reads it into an array
  open(File.expand_path(File.dirname(__FILE__) + "../../../data/locations_list.csv")).each { |x| 
      xarray = x.split("|")

    #The array reads as follows [0] = name, [1] = latitude, [2] = longitude, [3] = notes
    #The array is then put into the data table with name = name, latitude = lat, longitude = long, and notes = notes
     locate = Location.create(:name => xarray[0].chomp.strip, :lat => xarray[1], :long => xarray[2], :notes => xarray[3].chomp.strip) 
     locate.save
     puts locate.inspect
  }


  end
