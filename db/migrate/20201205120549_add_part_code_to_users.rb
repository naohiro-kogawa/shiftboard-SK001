class AddPartCodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :part_code, :integer
  end
end
