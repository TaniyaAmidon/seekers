class GroupMember < ApplicationRecord
  belongs_to :group
  belongs_to :user
  after_create :send_status_email

  private

  def send_status_email
    UserMailer.status(self).deliver_now
  end
end
