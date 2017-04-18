class ArtworksController < ApplicationController
  def index
    user = User.find_by_id(params[:user_id])
    my_artwork = []
    my_artwork += user.artworks
    my_artwork += user.shared_artworks

    render json: my_artwork
  end

  def create
    art = Artwork.new(artwork_params)

    if art.save
      render json: art
    else
      render(
      json: art.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    art = Artwork.find_by(id: params[:id])

    art.destroy
    render json: art
  end

  def show
    art = Artwork.find_by(id: params[:id])

    render json: art
  end

  def update
    art = Artwork.find_by(id: params[:id])

    art.update(artwork_params)
    render json: art
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
