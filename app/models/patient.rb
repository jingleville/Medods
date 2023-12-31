# == Schema Information
#
# Table name: patients
#
#  id         :bigint           not null, primary key
#  birth_date :datetime
#  email      :string
#  full_name  :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  session_id :string
#
class Patient < ApplicationRecord
	has_many :consultation_requests
	has_many :symptoms
end
