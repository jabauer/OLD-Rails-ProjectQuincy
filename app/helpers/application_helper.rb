# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper


#The following method calls the partial view in active_scaffold/common_date_select 
#to modify the date fields in ActiveScaffold

#This first line of code lists all the fields of type "date" in the data model and creates a method call for each of them
  [:death_date, :birth_date, :date_sent, :date_received, :date_docketed, :date].each do |col|
    define_method("#{col}_form_column") do |record, input_name|
      column = active_scaffold_config.columns[col]
      #This next line ensures that if a field is not found in the model, it is skipped over
      return if column.nil?
      #this renders the partial view, and defines the local variables: record, column, and input_name
      render(:partial => "active_scaffold/common_date_select", :locals => {
        :record=>record,
        :column=>column,
        :input_name=>input_name #input name is not really used here, but it may become useful later.
      })
    end
  end
  
#This method formats dates and partial dates
#It takes as its argument a date field, and 3 boolean fields indicating which parts of the date are known
  def partial_date(date, year_known, month_known, day_known)
    if date != nil
      if year_known == true && month_known == true && day_known == false
        date.strftime("%B %Y")
      elsif year_known == true && month_known == false && day_known == true
        date.strftime("%d ____ %Y")
      elsif year_known == false && month_known == true && day_known == true
        date.strftime("%d %B")
      elsif year_known == true && month_known == false && day_known == false
        date.strftime("%Y")
      elsif year_known == false && month_known == true && day_known == false
        date.strftime("%B")
      elsif year_known == false && month_known == false && day_known == true
        date.strftime("%d (month and year unknown)")
      else
        date.strftime("%d %B %Y")
      end
    end
  end
  
#This method is for customizing ActiveScaffold
#It displays in the validations column, the number of citations associated with any given record  
  def validations_column(record)
    "#{record.validations.count}"
  end
  
#This method transforms raw markup into HTML using the RedCloth Gem
  def to_redcloth(string)
    RedCloth.new(string).to_html
  end

end