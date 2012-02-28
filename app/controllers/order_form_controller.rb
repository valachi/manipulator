#encoding: UTF-8
class OrderFormController < ApplicationController

  def send_email
    order_form = OrderForm.new(params[:order_form])
    if order_form.valid?
      OrderFormMailer.sendmail(order_form).deliver
      redirect_to root_path, notice: "Пиьсмо отправлено"
    else
      redirect_to :back
    end
  end

end
