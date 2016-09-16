class AddLocationToCalendarItems < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_items, :location, :string
    change_column :calendar_items, :location, :string, null: false
    #sqlite3特有のやり方
  end
end
