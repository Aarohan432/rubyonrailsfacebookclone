Rails.application.routes.draw do
  get "friendshow"=>"friendshow#friendshowview"
  get "friendrequestshow"=>"friendrequestshow#friendrequestview"
  get "friendrequestsent/friendrequestget"
   get "friendrequestsent/friendrequestaccept"
  get "comment/commentview"
  post "/comment/commentview"
  post "/friendrequestsent/friendrequestaccept"
  post "/friendrequestsent/friendrequestget"
  post "/friendrequestsent/friendrequestdelete"
  get "friendrequestsent/friendrequestdelete"
  get "like/Like"
  get "friendrequestshow/friendrequestview"
  post "/friendrequestshow/friendrequestview"
  post "like/Like"
  get  "like/LikeUnlike"
  post "/like/LikeUnlike"
  post "/post/post", to: "post#post"
  get "post/post"
  get "game/gameview"
  get "home/new", to: "home#new"
  #  devise_scope :user do
  #    match "/sign-in" => "devise/sessions#new", :as => :login
  #  end
  get "videopage" => "videopage#video"
   get "game" => "game#gameview"
  get "gameplace/view"
  get "gameplace"=>"gameplace#Market"
   # get "gameplace/Market"
   get "marketplace"=>"marketplace#Market"
  get "marketplace/view"
  # get "marketplace/Market"
  get "videopage/view"
  # get "videopage/video"
  get "people/view"
  get "people/peopleview"
   get "people"=>"people#peopleview"
  get "people/gameview"
  get "homepage/view"
  get "homepage/home"
  get "/posts/new", to: "posts#new"
  post "/posts", to: "posts#create"

  devise_for :users, controllers: {
  registrations: "users/registrations" }

  get "home/index"

  root to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # devise_scope :user do
  #  match "/sign-in" => "devise/sessions#new", :as => :login
  get "up" => "rails/health#show", as: :rails_health_check


  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end




# devise_scope :user do
#  match "/sign-in" => "devise/sessions#new", :as => :login
# end
