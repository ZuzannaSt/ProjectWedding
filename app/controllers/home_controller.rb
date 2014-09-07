class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_invitations, only: [:show, :edit, :update, :destroy]
  before_action :set_collections, only: [:new, :edit, :update, :destroy]
  
  def index
   @home_index = true
 end

 def admin
   @invitations = Invitation.all
   @collections = Collection.all
 end

 def filtered
   @checked = params[:checked]
 end

  private
    def set_collections
      @collections = Collection.find(:all).map do |collection|
        [ collection.name, collection.id]
      end
    end
    def set_invitations
      @invitations = Invitation.find(:all).map do |invitation|
        [ invitation.name, invitation.id]
      end
  end
end