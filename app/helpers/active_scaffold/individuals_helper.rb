module ActiveScaffold::IndividualsHelper
  
  #This method has the assignments column display the titles the individuals held during their assignments.  
  #The first three associated records are displayed.  
  #If there are more than 3 associated records, the total number is also shown.
  def assignments_column(record)
    if record.assignments.count > 3
      "#{
        record.assignments.map do |a|
          a.assignment_title.name
        end.first(3).join(', ')
        }
        . . . 
        (#{record.assignments.count})"
    else
      "#{
        record.assignments.map do |a|
          a.assignment_title.name
        end.join(', ')
      }"
    end
  end
  
  #This method does the same thing for the Residences table, 
  #except it shows the locations where the person resided
  def residences_column(record)
    if record.residences.count > 3
      "#{
        record.residences.map do |r|
          r.location.name
        end.first(3).join(', ')
        }
        . . . 
        (#{record.residences.count})"
    else
      "#{
        record.residences.map do |r|
          r.location.name
        end.join(', ')
      }"
    end
  end
  
end