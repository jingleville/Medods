class UpdatePatient < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :session_id, :string
  end
end
