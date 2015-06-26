before do
  @user = current_user
end

get '/photostream' do
  @photos = flickr.people.getPhotos :user_id => @user.flickr_id, :min_taken_date => '2015-05-16 01:00:00'
  @image_array = []
  @photos.each do |photo|
    image = flickr.photos.getInfo :photo_id => photo.id
    image_url = "https://farm#{image.farm}.staticflickr.com/#{image.server}/#{image.id}_#{image.secret}_n.jpg"
    @image_array << image_url
  end




  erb :'photos/show'
end
