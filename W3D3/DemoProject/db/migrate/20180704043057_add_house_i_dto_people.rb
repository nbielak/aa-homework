class AddHouseIDtoPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people_tables, :house_id, :integer
  end
end
