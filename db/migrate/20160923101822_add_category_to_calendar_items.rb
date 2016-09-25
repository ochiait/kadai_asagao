class AddCategoryToCalendarItems < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_items, :category, :integer
    change_column :calendar_items, :category, :integer, null: false, default: 1
  end
end
