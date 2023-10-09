class CreateSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :symptoms do |t|
      t.boolean :BMI
      t.boolean :HeartRate
      t.boolean :Temp

      t.belongs_to :patient, null: false, foreign_key: true
      t.timestamps
    end
  end
end
