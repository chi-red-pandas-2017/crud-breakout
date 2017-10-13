get '/songs' do
  @songs = Song.order(:artist)
  erb :"songs/index"
end

get '/songs/new' do
  redirect_if_not_logged_in
  erb :"songs/new"
end

post '/songs' do
  redirect_if_not_logged_in

  @song = Song.new(params[:song])

  if @song.save
    current_user.songs << @song
    redirect '/'
  else
    @errors = @song.errors.full_messages
    erb :"songs/new"
  end

end


