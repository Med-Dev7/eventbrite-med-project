Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #resources :users,  only: [:show]
  # resources :post, except: [:index, :new, :create, :show, :edit,:update, :destroy], :path => '/'
  
  # resources :post, only: [:index], :path => '/'
    #resources :users,  only: [:show]
#   resources :root
#   root :to => root
  root :to => "static_pages#index"
#   root 'controller#action'
# root :to => “blogs#new” # I want to set blogs/new.html.erb as my #root page.
end


# <%= link_to "Home", root_path, :class => "nav-link" do %>
#   <span class="sr-only">(current)</span>
# <% end %> 
