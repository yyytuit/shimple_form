class CreateSampleForms < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_forms do |t|
      t.string :name
      t.integer :number
      t.date :date_on
      t.boolean :truth
      t.string :categorise
      t.integer :rating

      t.timestamps
    end
  end
end
