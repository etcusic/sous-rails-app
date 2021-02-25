class GroceryListsController < ApplicationController

    def show
        params.permit(:id)
        @list = GroceryList.find_by_id(params[:id])
    end

end
