class TitlesController < ApplicationController

  def index
    @titles = Title.all.order('class_title ASC')
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(title_params)

    if @title.save
      redirect_to @title
    else
      render 'new'
    end
  end

  def show
    @title = Title.find(params[:id])
  end

  def update
    @title = Title.find(params[:id])

    if @title.update(title_params)
      redirect_to @title
    else
      render 'edit'
    end
  end

  def edit
    @title = Title.find(params[:id])
  end

  private

  def title_params
    params.require(:title).permit(:class_title)
  end

end
