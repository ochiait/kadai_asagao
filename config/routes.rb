Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about", as: "about"
  get "lesson/:action(/:name)" => "lesson"

  get "calendar" => "calendar_items#index", as: "calendar"

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
