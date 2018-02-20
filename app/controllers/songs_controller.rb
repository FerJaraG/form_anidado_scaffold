class SongsController < ApplicationController
	def create
		playlist = Playlist.find(params[:playlist_id])
		playlist.songs.build(song_params)
		playlist.save
		redirect_to playlist, notice: 'Cancion creada con exito!'
	end

	def destroy
		song = Song.find(params[:id])
		song.destroy
		redirect_to playlist_path, notice: 'Cancion eliminada con exito!'
	end

	def song_params
		@song = params.require(:song).permit(:artist,:name)
	end
end
