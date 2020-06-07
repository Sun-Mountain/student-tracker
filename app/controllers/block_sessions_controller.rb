class BlockSessionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @sessions = BlockSession.all
  end

  def new
    @session = BlockSession.new
  end

  def create
    @session = BlockSession.create(session_params)

    if @session.save
      redirect_to block_sessions_path
    else
      render 'new'
    end
  end

  def show
    @session = BlockSession.find(params[:id])
  end

  def update
    @session = BlockSession.find(params[:id])

    if @session.update(session_params)
      redirect_to @session
    else
      render 'edit'
    end
  end

  def edit
    @session = BlockSession.find(params[:id])
  end

  def destroy
    @session = BlockSession.find(params[:id])
    @session.destroy
    
    redirect_to block_sessions_path
  end

  private

  def session_params
    params.require(:block_session).permit(:name, :start_date, :end_date)
  end

end
