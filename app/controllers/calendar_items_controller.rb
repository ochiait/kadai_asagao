class CalendarItemsController < ApplicationController
  # 予定一覧
  def index
    @items = CalendarItem.order("start_time")
  end
end
