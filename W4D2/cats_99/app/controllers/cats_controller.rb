class CatsController < ApplicationController
  def index
    @cats = Cat.all
    # render json: @cats
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :new
    end
  end

  def destroy
    @cat = Cat.find_by(id: params[:id])

    if @cat
      @cat.delete
    end
    redirect_to cats_url
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    
    if @cat
      render :edit
    else
      redirect_to cats_url
    end
  end

  def update

  end

  private

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
  end
end
