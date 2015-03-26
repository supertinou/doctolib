Rails.application.routes.draw do
	scope "/admin", module: "admin" do
		resources :health_professionals
	end
end
