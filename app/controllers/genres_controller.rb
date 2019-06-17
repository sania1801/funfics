class GenresController < InheritedResources::Base
  @genres = Genre.all.map{|g| [ g.name, g.id ] }
  def show
  end
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
