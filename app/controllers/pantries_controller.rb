class PantriesController < ApplicationController

    def show
        params.permit(:id)
        @pantry = Pantry.find_by_id(params[:id])
    end

end
