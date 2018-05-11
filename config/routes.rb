Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
    # get '/first_contact_url' => 'contacts#first_contact_action'
    # get 'all_contacts' => 'contacts#allcontacts'
  end
end
