Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :courses
    end
  end

  get 'api/v1/drivers/babies', :to => 'api/v1/drivers#babies'
  get 'api/v1/drivers/favorite_courses', :to => 'api/v1/drivers#favorite_courses'
  get 'api/v1/drivers/favored_courses', :to => 'api/v1/drivers#favored_courses'
  get 'api/v1/drivers/high_end', :to => 'api/v1/drivers#high_end'
  get 'api/v1/drivers/kongs', :to => 'api/v1/drivers#kongs'
  get 'api/v1/drivers/koopalings', :to => 'api/v1/drivers#koopalings'
  get 'api/v1/drivers/name', :to => 'api/v1/drivers#name'
  get 'api/v1/drivers/name_contains', :to => 'api/v1/drivers#name_contains'
  get 'api/v1/drivers/normal', :to => 'api/v1/drivers#normal'
  get 'api/v1/drivers/super', :to => 'api/v1/drivers#super'
  namespace :api do
    namespace :v1 do
      resources :drivers
    end
  end
  get '*other', to: 'home#index'
end
