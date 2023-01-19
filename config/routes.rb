Rails.application.routes.draw do

  # resource :attendances, only: [:index, :post]
  get 'api/attendances', to: 'attendances#index'
  post 'api/attendances', to: 'attendances#create'

end
