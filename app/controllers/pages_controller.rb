class PagesController < ApplicationController
  skip_before_action only: :home

  def home
  end

  def dashboard
    
  end
end
