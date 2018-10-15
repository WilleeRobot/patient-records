class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :birth_year
      t.string :history
      t.integer :user_id
    end
  end
end
