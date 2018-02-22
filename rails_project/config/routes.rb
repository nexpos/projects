Rails.application.routes.draw do
  get '/about' => "user#index"

  get '/contact'=> "user#show"

  get 'user/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
