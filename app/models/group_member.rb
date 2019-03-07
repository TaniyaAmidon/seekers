class GroupMember < ApplicationRecord
  belongs_to :group
  belongs_to :user
  after_create :send_status_email
  after_create :send_respond_to_application_email

  private

  def send_status_email
    UserMailer.status(self).deliver_now
  end

  def send_respond_to_application_email
    UserMailer.respond_to_application(self).deliver_now
  end
end
