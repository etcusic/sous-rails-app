class GroceryStoresController < ApplicationController

    def show
        params.permit(:id)
        @store = GroceryStore.find_by_id(params[:id])
    end

end
