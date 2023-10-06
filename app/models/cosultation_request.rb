class CosultationRequest < ApplicationRecord
  belongs_to :patient
  has_one :recomendation
end
