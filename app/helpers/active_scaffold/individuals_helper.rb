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
end