class MyFirstNotifierMailer < ApplicationMailer
  default from: 'ter.vankova@seznam.cz'

  def my_notification
    mail(to: "ter.vankova@seznam.cz",
          subject: "My email!")
  end
end
