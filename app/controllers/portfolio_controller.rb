class PortfolioController < ApplicationController
  def home
    render 'home'
  end

  def message
      @message = Contact.create ( message_params)
      if @message.valid?
        redirect_to '/home', alert: ['Thank You! I will contact you soon!']
      else
        redirect_to '/home', alert: ['Invalid Form']
      end
  end

  def links
  end

  def contact
  end
  private
  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
