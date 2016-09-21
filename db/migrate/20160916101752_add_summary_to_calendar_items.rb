class AddSummaryToCalendarItems < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_items, :summary, :text
    change_column :calendar_items, :summary, :text, null: false
    #sqlite3特有のやり方
  end
end
