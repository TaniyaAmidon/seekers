class UserMailer < ApplicationMailer
  def status(member)
    @greeting = "Hi"
    mail(to: member.user.email, subject: 'Thanks for your application')
  end

  def respond_to_application(member)
    group = member.group.id
    trip = Trip.where(group_id: group)
    organiser = trip.user
    mail(to: organiser.email, subject: 'You have an application to join!')
  end
end
