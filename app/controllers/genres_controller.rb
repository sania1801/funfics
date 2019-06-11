class GenresController < InheritedResources::Base
  @genres = Genre.all.map{|c| [ c.name, c.id ] }
  def show
  end
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
