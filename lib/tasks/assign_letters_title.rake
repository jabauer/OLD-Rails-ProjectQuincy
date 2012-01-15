#This is a rake task for populating the title field of the letters table
#The resulting title will read "SENDER to RECIPIENT. FROM_LOCATION, DATE_SENT."

desc "this is a task to populate the title field of the letters table"
task :assign_letters_title => :environment do
  Letter.all.each do |letter|
    #pull in relevant information
    date = letter.date_sent
    origin = Location.find_by_id(letter.from_location_id)
    senderI = Individual.find_by_id(letter.from_individual_id)
    senderO = Organization.find_by_id(letter.from_organization_id)
    recipientI = Individual.find_by_id(letter.to_individual_id)
    recipientO = Organization.find_by_id(letter.to_organization_id)
    
    #determine if sender was an individual, organization, or unknown
    if senderI.nil? && senderO.nil?
      sender = "?"
    elsif senderI.nil?
      sender = senderO.name
    else
      sender = senderI.name
    end
    
    #determine in recipient was an individual, organization, or unknown
    if recipientI.nil? && recipientO.nil?
      recipient = "?"
    elsif recipientI.nil?
      recipient = recipientO.name
    else
      recipient = recipientI.name
    end
    
    #was the original location recorded?
    if origin.nil?
      origin = "?"
    else
      origin = origin.name
    end
    
    #build the title -- date will display as YYYY-MM-DD
    letter.title = "#{sender} to #{recipient}. #{origin}, #{date}"
    letter.save
    
  end
end