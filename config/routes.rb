Rails.application.routes.draw do
  devise_for :users
	root 'messages#index'
  resources :messages
end

  # get 'messages' => 'messages#index'
  #  get 'messages/new' => 'messages#new'
  #  post 'messages' => 'messages#create'
  #  delete 'messages/:id' => 'messages#destroy'
  #  get 'messages/:id/edit' => 'messages#edit'
  #  patch 'messages/:id' => 'messages#update'
