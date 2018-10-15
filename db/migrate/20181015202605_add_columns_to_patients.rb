class AddColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :phone, :string
    add_column :patients, :address, :string
    add_column :patients, :healthcarenumber, :string
  end
end
