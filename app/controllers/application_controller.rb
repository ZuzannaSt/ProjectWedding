class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def routing_error
    @tags = Tag.where(:tag_name => request.path.gsub(/\W/," ").split(" "))
    @looked = @tags.all.map{|t| t.invitations.map{|i| i.name}}.flatten.join(",")
    render :file => "/pages/404.html.erb", :status => 404, :layout => "layouts/application"
    #render :text => "Strona o podanym adresie nie istnieje. #{@tags.all.map{|t| t.invitations.map{|i| i.name}}.flatten.join(",")}"
  	#render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
end
