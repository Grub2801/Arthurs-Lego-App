class FiguresController < ApplicationController
  def new
  end

  def create
    render plain: params[:figure].inspect

  end
end
