Rails.application.routes.draw do
  get 'country/all_states'

  get 'country/top_five_pop'

  get 'country/top_five_area'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
