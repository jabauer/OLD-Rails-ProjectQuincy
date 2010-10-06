module ActiveScaffold::StatesHelper
  
  #displays name of Location retrieved through In States linking field
  #instead of name of State (which would be redundant in this case).
  #The first three associated records are displayed.  
  #If there are more than 3 associated records, the total number of associated records is also displayed.

def in_states_column(record)
  if record.in_states.count > 3
    "#{
      record.in_states.map do |is|
        is.location.name
      end.first(3).join(', ')
    }
    . . . (#{record.in_states.count})
    "
  
  else
    "#{
      record.in_states.map do |is|
        is.location.name
      end.join(', ')
    }"
  end
end

end