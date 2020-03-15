class TitlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @titles = current_user.titles.all.order('class_title ASC')
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(title_params.merge(user_id: current_user.id))

    if @title.save
      redirect_to root_path
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

  def destroy
    @title = Title.find(params[:id])
    @title.destroy
    
    redirect_to titles_path
  end

  private

  def title_params
    params.require(:title).permit(:class_title)
  end

end
