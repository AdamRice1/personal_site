Rails.application.routes.draw do
  get 'home' => 'portfolio#home'

  get 'portfolio/about'

  post 'message' => 'portfolio#message'

  get 'portfolio/links'

  get 'portfolio/contact'

  get "*path" => 'portfolio#home'

  get '/' => redirect('home')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
