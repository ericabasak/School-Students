Rails.application.routes.draw do

  get '/schools', to: 'schools#index', as: 'schools'
  get '/schools/:id', to: 'schools#show', as: 'school'
  
  get '/students', to: 'students#index', as: 'students'
  get '/students/new', to: 'students#new', as: 'new_student' 
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
end
