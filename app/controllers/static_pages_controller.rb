class StaticPagesController < ApplicationController
  before_filter :authorize
  def index
    @leads = Lead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads }
    end
  end
end
