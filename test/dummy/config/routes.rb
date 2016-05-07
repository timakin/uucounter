Rails.application.routes.draw do
  resources :posts

  mount UuCounter::Engine => "/uu_counter"
end
