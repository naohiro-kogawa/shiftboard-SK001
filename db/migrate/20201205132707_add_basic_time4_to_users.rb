class AddBasicTime4ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :basic_time4, :string
    add_column :users, :remaks, :string
  end
end
