class SessionsController < ApplicationController  
  
  before_filter :authenticate, :only=>:login
  
  def login
    redirect_to :controller => 'active_scaffold/default', :action => 'index'
  end
  
  protected
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      #need to replace this with variables  and  after the demo
      allowed = (username == ADMIN_USERNAME && password == ADMIN_PASSWORD)
      session[:authenticated] = allowed
      allowed
    end
  end
  
end