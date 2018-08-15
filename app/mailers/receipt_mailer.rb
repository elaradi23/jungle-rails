class ReceiptMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  layout "mailer"

  def receipt_email(params)
    @email = params[:email]
    @order = params[:order]
    @line_items = @order.line_items.all
    mail(to: @email, subject: "Order")
  end
end
