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

  def create
    # render plain: params[:figure].inspect

    @figure = Figure.new(figure_params)

    if @figure.save
      redirect_to @figure
    else
      render 'new'
    end
  end

  private
    def figure_params
      params.require(:figure).permit(:title, :date, :description, :photo)
    end
end
