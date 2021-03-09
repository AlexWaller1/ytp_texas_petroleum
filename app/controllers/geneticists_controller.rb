class GeneticistsController < ApplicationController

def index
    @geneticists = Geneticist.all
end

def show
    @geneticist = Geneticist.find_by(id: params[:id])
end

def new
    @geneticist = Geneticist.new(user: current_user)
end

def create
    @geneticist = Geneticist.find(params[:id])
    if @geneticist.save
        redirect_to geneticist_path(@geneticist)
    else
        render :new
    end
end

def edit
    @geneticist = Geneticist.find(params[:id])
end

def update
    @geneticist = Geneticist.find(params[:id])
    if @geneticist.update(geneticist_params)
        redirect_to geneticist_path(@geneticist)
    else
        @error = 'Geneticist Must Have Name Entered'
        render :edit
    end
end

def destroy
    @geneticist = Geneticist.find(params[:id])
    @geneticist.destroy
    redirect_to geneticists_path
end

private

def geneticist_params
    params.require(:geneticist).permit(:name, :image, :education, :biography, :user_id)
end

end