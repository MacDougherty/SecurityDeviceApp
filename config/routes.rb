Rails.application.routes.draw do
		scope module: :security_device do 
				resources :security_devices
			end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
