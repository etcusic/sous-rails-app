class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
    end

    def create
    end

    def show
        params.permit(:id)
        @recipe = Recipe.find_by_id(params[:id])
    end

    def edit
    end

    def update
    end

    def delete
    end

end
