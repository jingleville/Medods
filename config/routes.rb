Rails.application.routes.draw do
  post '/consultation_request', to: 'consultation_requests#request'
  post '/consultation_requests/:request_id/recommendation_requests', to: 'recommendation_requests#create'

  get '/patients/:patient_id/recommendation_requests', to: 'recommendation_requests#index' 
  get '/', to: 'patients#get_medical_data'
end
