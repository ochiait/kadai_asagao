class CalendarItem < ApplicationRecord
  validates :title, presence: true,
    length: { maximum: 20}

  validate :start_time_check

  def  start_time_check
    errors.add( :start_time, :invalid_calendar_item_start_time ) unless start_time <= end_time
  end
end
