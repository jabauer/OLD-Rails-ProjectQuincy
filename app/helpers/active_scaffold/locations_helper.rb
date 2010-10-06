module ActiveScaffold::LocationsHelper

#The following methods customize the display of associated column data in active_scaffold for the locations table.

  #This method has the in_states column display the name of the state in which that location existed.
  def in_states_column(record)
    record.in_states.map do |is|
      is.state.name
    end.join(', ')
  end
  
  #This method has the in_regions column display the name of the region in which that location existed.
  def in_regions_column(record)
    record.in_regions.map do |ir|
      ir.region.name
    end.join(', ')
  end
  
  
  #This method has the assignments column display the how many assignments were posted that location.  
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
      record.assignments.map do |a|
        a.assignment_title.name
      end.join(', ')
    end
  end
  
end