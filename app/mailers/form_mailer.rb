class FormMailer < ActionMailer::Base
	default from: "formularz@projectwedding.com"
	def submission(nazwisko, mail, phone, wedding_date, guests, order, option, liked_invitations, liked_colors, about_us)
		@nazwisko = nazwisko
		@mail = mail
		@phone = phone
		@wedding_date = wedding_date
		@guests = guests
		@order = order
		@option = option
		@liked_invitations = liked_invitations
		@liked_colors = liked_colors
		@about_us = about_us
 		mail(to: 'your@gmail.com', subject: 'Formularz ze strony')
	end
end
