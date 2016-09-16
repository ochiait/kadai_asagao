class AddScoreToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :score, :integer
  end
end
