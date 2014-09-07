class FormMailerController < ApplicationController
  def sent
    nazwisko = params[:nazwisko]
    mail = params[:mail]
    phone = params[:phone]
    wedding_date = params[:wedding_date]
    guests = params[:guests]
    order = params[:order]
    option = params[:option]
    liked_invitations = Invitation.find(params[:liked_invitations][:invitations].reject{|id| id.empty? }).map(&:name).join(", ")
    liked_colors = Color.find(params[:liked_colors][:colors].reject{|id| id.empty? }).map(&:color_name).join(", ")
    about_us = params[:about_us]
    FormMailer.submission(nazwisko, mail, phone, wedding_date, guests, order, option, liked_invitations, liked_colors, about_us).deliver
  end
end
