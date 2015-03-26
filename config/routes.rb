Rails.application.routes.draw do
  
	scope "/admin", module: "admin" do
		resources :health_professionals
		resources :medical_specialities
	end

	scope "/", module: "public" do
		resources :health_professionals, only: :index
	end

	root to: 'public/health_professionals#index'

end
