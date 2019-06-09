class GenresController < InheritedResources::Base

  private

    def genre_params
      params.require(:genre).permit(:name, :display_in_navbar)
    end

end
