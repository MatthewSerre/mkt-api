Rails.application.routes.draw do
  resources :karts
  root to: 'home#index'

  # Course routes 
  get 'api/v1/courses/debut_system', :to => 'api/v1/courses#debut_system'
  get 'api/v1/courses/name', :to => 'api/v1/courses#name'
  get 'api/v1/courses/name_contains', :to => 'api/v1/courses#name_contains'
  get 'api/v1/courses/normal', :to => 'api/v1/courses#normal'
  get 'api/v1/courses/reverse', :to => 'api/v1/courses#reverse'
  get 'api/v1/courses/reverse_trick', :to => 'api/v1/courses#reverse_trick'
  get 'api/v1/courses/trick', :to => 'api/v1/courses#trick'

  namespace :api do
    namespace :v1 do
      resources :courses, only: [:index]
    end
  end

  # Driver routes
  get 'api/v1/drivers/babies', :to => 'api/v1/drivers#babies'
  get 'api/v1/drivers/favorite_courses', :to => 'api/v1/drivers#favorite_courses'
  get 'api/v1/drivers/favored_courses', :to => 'api/v1/drivers#favored_courses'
  get 'api/v1/drivers/high_end', :to => 'api/v1/drivers#high_end'
  get 'api/v1/drivers/kongs', :to => 'api/v1/drivers#kongs'
  get 'api/v1/drivers/koopalings', :to => 'api/v1/drivers#koopalings'
  get 'api/v1/drivers/name', :to => 'api/v1/drivers#name'
  get 'api/v1/drivers/name_contains', :to => 'api/v1/drivers#name_contains'
  get 'api/v1/drivers/normal', :to => 'api/v1/drivers#normal'
  get 'api/v1/drivers/special_skill', :to => 'api/v1/drivers#special_skill'
  get 'api/v1/drivers/super', :to => 'api/v1/drivers#super'
  get 'api/v1/drivers/test', :to => 'api/v1/drivers#test'
  
  namespace :api do
    namespace :v1 do
      resources :drivers, only: [:index]
    end
  end

  get '*other', to: 'home#index'
end
