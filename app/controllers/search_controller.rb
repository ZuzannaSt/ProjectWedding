require 'will_paginate/array'

class SearchController < ApplicationController
  def home
    @query = params[:q]
    q = params[:q]
    @q = Tag.search(tag_name_cont: params[:q])
    @collections = Collection.search(name_cont: q).result(distinct: true).paginate(:per_page => 6, :page => params[:page])
    
    if params[:filter]
        @elements = params[:filter][:elements].reject{|e| e.empty? }
        if @elements.empty?
          @invitations = Invitation.includes(:tags).references(:tags).where(:"tags.id" => @q.result).paginate(:per_page => 6, :page => params[:page])
        else
          @invitations = Invitation.includes(:tags,:elements).references(:tags,:elements).where(:"tags.id" => @q.result,:"elements.id" => @elements).paginate(:per_page => 6, :page => params[:page])
        end
    else
     @invitations = Invitation.includes(:tags).references(:tags).where(:"tags.id" => @q.result).paginate(:per_page => 6, :page => params[:page])
    end
  end
end
