class BadgesController < ApplicationController

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(params[:id])
    @badge = current_user
  end
end
