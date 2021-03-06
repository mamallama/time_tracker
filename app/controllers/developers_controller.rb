class DevelopersController < ApplicationController
  before_action :set_developer, only:[:show, :edit, :update, :destroy]

  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new
    if @developer.save
      redirect_to developer_path(@developer)
    else
      render :new
    end
  end

  def update
    @developer.update(developer_params)
  end

  def destroy
    @developer.destroy
  end

private
  def set_developer
    @developer = Developer.find(params[:id])
  end

  def developer_params
    params.require(:developer).permit(:name, :email, :password, :duration, :project_id, :date)
  end
end
