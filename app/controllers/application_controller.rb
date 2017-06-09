class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #RETOURNE DES URLS ABOSLUES, IMPORTANT POUR FACEBOOK ETC
  #définir la variable host dans heroku heroku config:set HOST=www.my_product.com
	def default_url_options
	  { host: ENV['HOST'] || 'localhost:3000' }
	end

end
