Rails.application.routes.draw do
  resources :egg_bundles
  resources :flocks do
    resources :egg_bundles
  end
end
