get '/songs' do
  @songs = Song.order(:artist)
  erb :"songs/index"
end
