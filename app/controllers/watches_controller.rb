class WatchesController < ApplicationController
  skip_before_action only: :index
  
  def index
    @watches = Watch.all
  end
end
