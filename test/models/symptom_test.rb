# == Schema Information
#
# Table name: symptoms
#
#  id         :bigint           not null, primary key
#  BMI        :boolean
#  HeartRate  :boolean
#  Temp       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :bigint           not null
#
# Indexes
#
#  index_symptoms_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  fk_rails_...  (patient_id => patients.id)
#
require "test_helper"

class SymptomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
