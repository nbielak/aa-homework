class AddNametoPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people_tables, :name, :string
  end
end
