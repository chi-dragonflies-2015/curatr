helpers do

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logout_user
    session[:user_id] = nil
    session[:username] = nil
    session[:flickr_id] = nil
  end

  def existing_user?
    if User.find_by(username: current_user[:username])
      true
    else
      false
    end
  end

  def logged_in?
    !session[:user_id].nil?
  end

  def create_image_urls(photo_array)
    @image_array = []
    photo_array.each do |photo|
      image = flickr.photos.getInfo :photo_id => photo.id
      image_url = "https://farm#{image.farm}.staticflickr.com/#{image.server}/#{image.id}_#{image.secret}_n.jpg"
      @image_array << image_url
    end
  end

end
