class CalendarItem < ApplicationRecord
  validates :title, presence: true,
    length: { maximum: 20}

  validate :start_time_check

  def  start_time_check
    errors.add( :start_time, :invalid_calendar_item_start_time ) unless start_time <= end_time
  end
  CATEGORY_NAMES = {
   1 => "仕事",
   2 => "家庭",
   3 => "趣味",
   4 => "買い物",
   5 => "運動",
   6 => "その他"
  }
end
