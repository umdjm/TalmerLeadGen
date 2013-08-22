class NotificationsController < ApplicationController
  before_filter :authorize

  def index
    @notifications = Notification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notifications }
    end
  end

end
