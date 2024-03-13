class WatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @watches = Watch.all
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(params_watch)
    @watch.user_id = current_user.id
    if @watch.save
      redirect_to @watch
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @watch = Watch.find(params[:id])
  end

  private

  def params_watch
    params.require(:watch).permit(:name, :price, :brand, :model, :description, :movement_type, :gender)
  end

end
