class Trip < ApplicationRecord
  # associations
  belongs_to :group
  belongs_to :user
  belongs_to :activity

  # validations
  validates_presence_of :title, :description, :destination, :start_date, :end_date, :organiser_exp, :crew_exp, :max_crew_size
  validates :visited_before, :crew_exp_required, inclusion: { in: [true, false] }
  validates_numericality_of :max_crew_size, on: :create
  validates_length_of :description, :organiser_exp, :crew_exp, minimum: 50, maximum: 250
  validate :start_date_must_be_future
  validate :end_date_after_start?

  # allows stripe integration
  monetize :price_cents

  geocoded_by :destination
  after_validation :geocode, if: :will_save_change_to_destination?

  mount_uploader :photo, PhotoUploader

  private

  def start_date_must_be_future
    errors.add(:start_date, "Your trip must start in the future!") if start_date.present? && start_date < Date.today
  end

  def end_date_after_start?
    errors.add(:end_date, "Your trip must end *after* it starts!") if end_date.present? && start_date > end_date
  end
end
