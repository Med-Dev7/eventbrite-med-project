Rails.application.routes.draw do
  get 'user/show'
  get 'user/edit'
  get 'user/update'
  # get 'event/index'
  # get 'event/new'
  # get 'event/create'
  # get 'event/show'
  # get 'event/destroy'
  # get 'event/edit'
  # get 'event/update'
  # get 'static_pages/index'
  # get 'static_pages/secret'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :event
  resources :user, only: [:show, :edit, :update]
  root :to => "event#index"

  #resources :users,  only: [:show]
  # resources :post, except: [:index, :new, :create, :show, :edit,:update, :destroy], :path => '/'
  
  # resources :post, only: [:index], :path => '/'
    #resources :users,  only: [:show]
#   resources :root
#   root :to => root
  
#   root 'controller#action'
# root :to => “blogs#new” # I want to set blogs/new.html.erb as my #root page.
end


# #  <% if current_user == nil %>
# <%= link_to "Sign in", new_user_session_path, :class => "dropdown-item" %>
# else
#   <%= link_to "profil",  static_pages_secret_path, :class => "dropdown-item"%>
#   <%= link_to "sign out", destroy_user_session_path, :class => "dropdown-item"%>
# # <% end %>
