class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  has_one :review

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :start_date_today

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def start_date_today
    return if end_date.blank? || start_date.blank?

    if end_date == Date.today
      errors.add(:start_date, "cannot be end date")
    end
  end

end
