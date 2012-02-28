#encoding: UTF-8
class OrderFormMailer < ActionMailer::Base
  default to: "impulse221@yandex.ru",
          from: "registracia221@gmail.com"

  def sendmail(message)
    @message = message
    mail subject: "Новый заказ с сайта manipulyator.ru"
  end

end
