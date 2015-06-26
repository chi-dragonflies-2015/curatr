# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__
configure do
enable :sessions
end
run Sinatra::Application
