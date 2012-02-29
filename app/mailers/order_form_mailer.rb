#encoding: UTF-8
class OrderFormMailer < ActionMailer::Base
  default to: "kranbortspb@gmail.com",
          from: "kranbortspb@gmail.com"

  def sendmail(message)
    @message = message
    mail subject: "Новый заказ с сайта manipulyator.ru"
  end

end
