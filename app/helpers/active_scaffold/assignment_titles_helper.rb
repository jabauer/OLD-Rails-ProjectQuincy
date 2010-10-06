module ActiveScaffold::AssignmentTitlesHelper
  
  #The following is a method for customizing the display of the assignments column in active_scaffod.
  #This method has the assignments column display the names of the associated locations.  
  #The first three associated records are displayed.  
  #If there are more than 3 associated records, the total number is also shown.
  def assignments_column(record)
    if record.assignments.count > 3
      "#{
        record.assignments.map do |a|
          a.location.name
        end.first(3).join(', ')
        }
        . . . 
        (#{record.assignments.count})"
    else
      "#{
        record.assignments.map do |a|
          a.location.name
        end.join(', ')
      }"
    end
  end
  
end
