class CreateCalendarItems < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_items do |t|
      t.string :title, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.boolean :all_day, null: false
      t.text :summary, null: false
      t.text :description, null: false
      t.timestamps null: false
    end
  end
end
