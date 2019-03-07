class UserMailer < ApplicationMailer
  def status(member)
    @greeting = "Hi"

    mail(to: member.user.email, subject: 'Thanks for your application')
  end
end
