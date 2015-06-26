before do
  @user = current_user
end

get '/photostream' do
  @photos = flickr.people.getPhotos :user_id => @user.flickr_id, :per_page => '10'
  create_image_urls(@photos)
  erb :'photos/show'
end


