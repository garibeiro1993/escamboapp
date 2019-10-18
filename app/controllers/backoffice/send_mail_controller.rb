class Backoffice::SendMailController < ApplicationController

	def edit
		@admin = Admin.find(params[:id])

		respond_to do |format|
		format.js
	end
end

	def create
	begin
		AdminMailer.send_message(current_admin, params[:'recipient-text'], params[:'subject-text'], params[:'message-text']).deliver_now
		#raise -- forca um erro
		@notify_message = "Email enviado com Sucesso"
		@notify_flag = "success"
	rescue
		@notify_message = "Erro ao enviar email. Tente novamente"
		@notify_flag = "error"
	end
		respond_to do |format|
		format.js
	end
	end
end
