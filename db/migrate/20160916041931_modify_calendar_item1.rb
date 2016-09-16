class ModifyCalendarItem1 < ActiveRecord::Migration[5.0]
  def change
    rename_column :calendar_items, :starts_at, :start_time
    rename_column :calendar_items, :ends_at, :end_time
  end
end
