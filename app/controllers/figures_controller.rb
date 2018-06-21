class FiguresController < ApplicationController

  def index
    @figures = Figure.all
  end

  def show
    @figure = Figure.find(params[:id])
  end

  def new
    @figure = Figure.new
  end

  def edit
     @figure = Figure.find params[:id]
  end

  def create
    # render plain: params[:figure].inspect

    @figure = Figure.new(figure_params)

    if @figure.save
      redirect_to @figure
    else
      render 'new'
    end
  end

  def update
    @figure = Figure.find(params[:id])

    if @figure.update(figure_params)
      redirect_to @figure
    else
      render 'edit'
    end
  end

  def destroy
    @figure = Figure.find(params[:id])
    @figure.destroy

    redirect_to figures_path
  end

  private
    def figure_params
      params.require(:figure).permit(:title, :date, :description, :photo)
    end
end
