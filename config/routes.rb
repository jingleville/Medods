Rails.application.routes.draw do
  post '/consultation_request', to: 'consultation_requests#request'
  post '/consultation_requests/:request_id/recommendations', to: 'recommendations#create'

  get '/patients/:patient_id/recommendations', to: 'recommendations#index' 
  
end
