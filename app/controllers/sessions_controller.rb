class SessionsController < ApplicationController

  def index
    @sessions = Session.all.order('session_name ASC')
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.create(session_params)

    if @session.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @session
  end

  def update
    if @session.update(session_params)
      redirect_to @session
    else
      render 'edit'
    end
  end

  def edit
    @session
  end

  def destroy
    @session.destroy

    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:session_name, :start_date, :end_date, title_ids: [])
  end

end
