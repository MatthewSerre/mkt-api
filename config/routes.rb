# frozen_string_literal: true

Rails.application.routes.draw do
  resources :course_driver_connections
  root to: "home#index"

  namespace :api do
    namespace :v1 do
      resources :courses, :drivers, :karts, :gliders, only: [:index]
    end
  end

  # Course routes
  get "api/v1/courses/debut_system", to: "api/v1/courses#debut_system"
  get "api/v1/courses/name", to: "api/v1/courses#name"
  get "api/v1/courses/name_contains", to: "api/v1/courses#name_contains"
  get "api/v1/courses/normal", to: "api/v1/courses#normal"
  get "api/v1/courses/ranked", to: "api/v1/courses#ranked"
  get "api/v1/courses/reverse", to: "api/v1/courses#reverse"
  get "api/v1/courses/reverse_trick", to: "api/v1/courses#reverse_trick"
  get "api/v1/courses/trick", to: "api/v1/courses#trick"

  # Driver routes
  get "api/v1/drivers/babies", to: "api/v1/drivers#babies"
  get "api/v1/drivers/daily_selects", to: "api/v1/drivers#daily_selects"
  get "api/v1/drivers/high_end", to: "api/v1/drivers#high_end"
  get "api/v1/drivers/in_pipes", to: "api/v1/drivers#in_pipes"
  get "api/v1/drivers/kongs", to: "api/v1/drivers#kongs"
  get "api/v1/drivers/koopalings", to: "api/v1/drivers#koopalings"
  get "api/v1/drivers/name", to: "api/v1/drivers#name"
  get "api/v1/drivers/name_contains", to: "api/v1/drivers#name_contains"
  get "api/v1/drivers/normal", to: "api/v1/drivers#normal"
  get "api/v1/drivers/special_skill", to: "api/v1/drivers#special_skill"
  get "api/v1/drivers/super", to: "api/v1/drivers#super"
  get "api/v1/drivers/test", to: "api/v1/drivers#test"

  # Kart routes
  get "api/v1/karts/high_end", to: "api/v1/karts#high_end"
  get "api/v1/karts/name", to: "api/v1/karts#name"
  get "api/v1/karts/name_contains", to: "api/v1/karts#name_contains"
  get "api/v1/karts/normal", to: "api/v1/karts#normal"
  get "api/v1/karts/special_skill", to: "api/v1/karts#special_skill"
  get "api/v1/karts/super", to: "api/v1/karts#super"

  # Glider routes
  get "api/v1/gliders/high_end", to: "api/v1/gliders#high_end"
  get "api/v1/gliders/name", to: "api/v1/gliders#name"
  get "api/v1/gliders/name_contains", to: "api/v1/gliders#name_contains"
  get "api/v1/gliders/normal", to: "api/v1/gliders#normal"
  get "api/v1/gliders/special_skill", to: "api/v1/gliders#special_skill"
  get "api/v1/gliders/super", to: "api/v1/gliders#super"

  get "*other", to: "home#index"
end
