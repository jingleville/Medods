# == Schema Information
#
# Table name: recomendations
#
#  id                      :bigint           not null, primary key
#  recomendation_body      :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  consultation_request_id :bigint           not null
#
# Indexes
#
#  index_recomendations_on_consultation_request_id  (consultation_request_id)
#
# Foreign Keys
#
#  fk_rails_...  (consultation_request_id => consultation_requests.id)
#
require "test_helper"

class RecomendationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
