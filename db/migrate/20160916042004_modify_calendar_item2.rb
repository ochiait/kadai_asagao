class ModifyCalendarItem2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :calendar_items, :summary
  end
end
