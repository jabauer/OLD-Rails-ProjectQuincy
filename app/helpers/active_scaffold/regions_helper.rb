module ActiveScaffold::RegionsHelper
  
    #displays name of Location retrieved through In Regions linking field
    #instead of name of region (which would be redundant in this case).
    #The first three associated records are displayed.  
    #If there are more than 3 associated records, the total number of associated records is also displayed.

  def in_regions_column(record)
    if record.in_regions.count > 3
      "#{
        record.in_regions.map do |ir|
          ir.location.name
        end.first(3).join(', ')
      }
      . . . (#{record.in_regions.count})
      "

    else
      "#{
        record.in_regions.map do |ir|
          ir.location.name
        end.join(', ')
      }"
    end
  end
  
end
