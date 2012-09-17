class ContactsController < ApplicationController
  def new
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])

      if @message.valid?
        ShopMailer.contact(@message).deliver
        redirect_to contacts_path, :notice => t(:message_sent)
      else
        flash.now.alert = "Please fill all fields."
        render :new
      end
    end
end
