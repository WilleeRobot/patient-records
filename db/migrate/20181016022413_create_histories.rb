class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :date
      t.string :notes
      t.string :action
      t.integer :patient_id
    end
  end
end
