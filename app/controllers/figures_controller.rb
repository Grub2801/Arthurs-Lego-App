class FiguresController < ApplicationController
  def index
    @figures = Figure.all
  end

  def show
    @figure = Figure.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:figure].inspect

    @figure = Figure.new(article_params)

    @figure.save
    redirect_to @figure

  end

  private
    def article_params
      params.require(:figure).permit(:title, :date, :description)
    end

end
