class TitlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_title, except: [ :index, :new, :create ]

  def index
    @titles = current_user.titles.all.order('class_title ASC')
  end

  def new
    @title = Title.new
  end

  def create
    @title = current_user.titles.create(title_params)

    if @title.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    owner?(@title)
  end

  def update
    if @title.update(title_params)
      redirect_to @title
    else
      render 'edit'
    end
  end

  def edit
    owner?(@title)
  end

  def destroy
    @title.destroy
    
    redirect_to titles_path
  end

  private

  def set_title
    @title = Title.find(params[:id])
  end

  def title_params
    params.require(:title).permit(:class_title)
  end

end
