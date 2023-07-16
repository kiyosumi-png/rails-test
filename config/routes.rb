Rails.application.routes.draw do
  scope :admin do
    resources :brands, :products
  end
end
