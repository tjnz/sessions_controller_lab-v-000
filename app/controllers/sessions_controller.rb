class SessionsController <  ApplicationController
  def new
  end
  
  def create
  	return (redirect_to sessions_new_path) if !params[:name]|| params[:name].empty?
  	
  	session[:name] = params[:name]
  	redirect_to root_path
  	
  end
  
  def destroy
  	session.clear
  	redirect_to controller: 'application', action: 'hello'
  end
  
end
