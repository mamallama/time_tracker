class TimeEntriesController < ApplicationController
  before_action :set_time_entry, only: [:show, :edit, :update, :destroy]
  def index
  end

  def new
    @time_entry = TimeEntry.new
  end

  def create
   @time_entry = TimeEntry.new(time_entry_params)
    if @time_entry.save
      redirect_to time_entry_path(@time_entry)
    else
      render :new
    end
  end

  def update
    @time_entry.update(time_entry_params)
  end

  def destroy
    @time_entry.destroy
  end

  def show

  end

  private
  def set_time_entry
    @time_entry = TimeEntry.find(params[:id])
  end

  def time_entry_params
    params.require(:time_entry).permit(:duration, :developer_id, :project_id, :date)
  end

end
