Mails::Application.routes.draw do
  root to: "mailing_lists#index"
  # resources :users, only: [:show]

  post '/search'            => "mailing_lists#search", :as => :search
  get '/:name/threads'     => "threads#index"
  get '/:name/threads/:id' => 'threads#show', :as => :thread
  get '/:name'             => "mailing_lists#show", :as => :mailing_list
  post '/:name'            => "threads#search", :as => :thread_search            
end