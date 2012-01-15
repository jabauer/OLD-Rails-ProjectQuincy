desc "This is a task to load selected data from The Jay Papers (located in /data/jay_letters1794.csv) into the Letters table"
task :load_jay_letters => :environment do
  
#The script locates the CSV file and reads it into an array
  open(File.expand_path(File.dirname(__FILE__) + "../../../data/jay_letters1794.csv")).each { |x| 
      xarray = x.split("|")

      # The array reads as follows [0] = Jay ID (not used), [1] = notes, [2] = sent date, 
      # [3] = author (from_individual), [4] = recipient (to_individual), 
      # [5] = destination (to_location)
      
      #Gets (or creates) id for every author
      author = Individual.find_or_create_by_name(xarray[3].chomp.strip)
      # author.save
      # puts author.id
      
      recipient = Individual.find_by_name(xarray[4].chomp.strip) #no need to create new ID because Jay is already in the database
      # puts recipient.id
      
      destination = Location.find_by_name(xarray[5].chomp.strip)
      # puts destination.id
      
      
      # once all the individuals have been created the letter variable is used to populate the Letters table
      
      letter = Letter.create(:from_individual_id => author.id, :to_individual_id => recipient.id, :to_location_id => destination.id, :notes => xarray[1].chomp.strip, :date_sent => xarray[2].chomp.strip, :sent_day_known => 'true', :sent_month_known => 'true', :sent_year_known => 'true')
      
      letter.save
    }
  end