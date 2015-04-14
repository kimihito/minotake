Minotake::Application.routes.draw do
  get "home/index"
  root 'home#index'
  get 'download' => 'home#download'
end
