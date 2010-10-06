desc "this is a task to clean up the field individuals.name from the csv import"
task :clean_individual_name => :environment do
  Individual.all.each do |ind|
    name = ind.name 
    frags = name.split(';')
    frags = [name] if frags.empty?
    if frags.last=~/\*$/
      ind.american = false
      frags[-1]=frags.last.sub(/\*$/, "")
    else
      ind.american = true
    end
    ind.name = "#{frags[1]} #{frags[0].capitalize} #{frags[2]} #{frags[3]}".chomp.strip.sub(/ +/, " ")
    ind.sort_name = "#{frags[0]}#{frags[1]}".gsub(/ */, "").downcase
    puts ind.sort_name
    
    ind.save
  end
end