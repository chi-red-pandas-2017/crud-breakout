post '/songs/:id/favorites' do
  redirect_if_not_logged_in
  @song = Song.find(params[:id])
  @favorite = Favorite.new(user: current_user, song: @song)
  redirect '/'
end

delete '/songs/:song_id/favorites/:id' do
  redirect_if_not_logged_in
  @fave = Favorite.find(params[:id])
  @fave.destroy
  redirect '/'
end
