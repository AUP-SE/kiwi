class HelpsessesController < ApplicationController
    def helpsess_params
        params.require(:topic).permit(:desc, :RequesterID, :HelperID, :CourseID, :created_at)
    end
    
    def show
        id = params[:id]
        @helpsess = Helpsess.find(id)
    end
    
    def history
        @helpsesses = Helpsess.all
    end
    
    def new
    end
    
    def create
        @helpsess = Helpsess.create!(helpsess_params)
        flash[:notice] = "#{@helpsess.topic} was created."
        redirect_to '/courses/index'
    end

end