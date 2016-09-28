Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about", as: "about"
  get "lesson/:action(/:name)" => "lesson"

  get "calendar" => "calendar_items#index", as: :calendar
  get "categories/:category/calendar_items" => "calendar_items#category_calendar_items", as: :category_calendar_items

namespace :api do
  resources :members
end

  resources :members do
    collection do
     get "search"#検索結果
     get "male" #男性
     get "female" #女性
    end
  end
  resources :calendar_items
end
