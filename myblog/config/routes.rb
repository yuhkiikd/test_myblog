Rails.application.routes.draw do
  root 'test_blogs#index'
  resources :test_blogs do
    collection do
      post :confirm
    end
  end
end
