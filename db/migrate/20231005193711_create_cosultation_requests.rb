class CreateCosultationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :consultation_requests do |t|
      t.text :request_body
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
