Rails.application.routes.draw do

  resource :time, only: [:index, :show]
end
