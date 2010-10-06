#This is a basic rake task for assigning a single fielded value to all the records in a given table.

desc "this is a task set the sex field of all individuals currently in the database to 'male'"
task :set_sex_field => :environment do
  Individual.all.each do |ind|
    sex = ind.sex
    ind.sex = 'male'
    
    ind.save
  end
end