get '/' do
  @user = current_user
  erb :index
end

get '/login' do
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
  user = User.find_by(username: @login.username) || User.create(username: @login.username, flickr_id: @login.id)
  redirect "/authenticated?username=#{@login.username}&id=#{@login.id}"
end

get '/authenticated' do
  @user = User.find_by(username: params[:username])
  session[:user_id] = @user.id
  session[:username] = @user.username
  session[:flickr_id] = @user.flickr_id
  redirect '/'
end

get '/logout' do
  logout_user
  redirect '/'
end
