Rails.application.routes.draw do
  # get 'upload/index'

    # root 'uploads#index'
   resources :uploads, only: [:index, :create, :destroy] do
     collection do
     get :list #list_uploads_url
       end
     end

   devise_for :users


 resources :gigs do
 	 resource :proposals, :reviews, :uploads,  expect: :index
 	collection do
 		get :search
 	end
 end
    root 'gigs#index'
    # get'/upload' => 'uploads#index'
    get'/mygigs' => 'gigs#mygigs'
    # get'/category' => 'gigs#category'
end
