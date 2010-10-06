=begin

This module uses methods defined by ActiveScaffold to secure data from being created, 
updated, or deleted by unauthorized users.  Even without logging in, however, you can still
read the data.

=end

module AuthController
  
  def read_authorized?
    true
  end
  def update_authorized?
    puts "session[:authenticated] -> #{session[:authenticated]}"
    session[:authenticated].to_s == 'true'
  end
  def create_authorized?
    session[:authenticated].to_s == 'true'
  end
  def delete_authorized?
    session[:authenticated].to_s == 'true'
  end
  
end