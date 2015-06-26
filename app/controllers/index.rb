get '/' do
  erb :index
end

get '/authenticate' do
  token = flickr.get_request_token(:oauth_callback => to('check'))
  session[:token] = token
  redirect flickr.get_authorize_url(token['oauth_token'], :perms => 'delete')
end

get '/check' do
  token = session.delete :token
  @auth_flickr = FlickRaw::Flickr.new
  session[:auth_flickr] = @auth_flickr
  @auth_flickr.get_access_token(token['oauth_token'], token['oauth_token_secret'], params['oauth_verifier'])
  @login = @auth_flickr.test.login
  redirect "/authenticated?username=#{@login.username}&id=#{@login.id}"
end

get '/authenticated' do
  @login = {
    username: params[:username],
    id: params[:id]
  }
  session[:username] = @login[:username]
  session[:id] = @login[:id]
  puts "+++++++++++++++++++++++++++++++"
  puts "session[:username] is"
  p session[:username]
  puts "session[:id] is"
  p session[:id]

  erb :loggedin
end
