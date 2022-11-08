require "sinatra"
require "json"
require "dotenv"


set :static, true
set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do 
    content_type 'text/html'
    send_file File.join(settings.public_folder, 'index.html')
end