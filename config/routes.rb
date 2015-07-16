Rails.application.routes.draw do
  resources :students
  get 'students/new' => 'students#new'
end
