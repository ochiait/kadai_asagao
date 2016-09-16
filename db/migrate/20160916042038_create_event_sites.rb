class CreateEventSites < ActiveRecord::Migration[5.0]
  def change
    create_table :event_sites , primary_key: "site_id" do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.string :address1, null: false
      t.string :address2, null: false
      t.timestamps
    end
  end
end
