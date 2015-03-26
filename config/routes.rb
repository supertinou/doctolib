Rails.application.routes.draw do
  
	scope "/admin", module: "admin" do
		resources :health_professionals
		resources :medical_specialities
	end
end
