class CreateRecomendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recomendations do |t|
      t.text :recomendation_body
      t.belongs_to :consultation_request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
