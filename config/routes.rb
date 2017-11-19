Rails.application.routes.draw do
  
  root "stories#index"
  resource :session

  resources :stories do
  	collection do
  		get "bin" 
  	end
    resources :votes 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
