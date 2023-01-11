Rails.application.routes.draw do

  # resource :attendances, only: [:index, :show]
  get 'api/attendances', to: 'attendances#index'

end
