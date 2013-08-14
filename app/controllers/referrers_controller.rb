class ReferrersController < ApplicationController
  before_filter :authorize

  # GET /referrers
  # GET /referrers.json
  def index
    @referrers = Referrer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @referrers }
    end
  end

  # GET /referrers/1
  # GET /referrers/1.json
  def show
    @referrer = Referrer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @referrer }
    end
  end

  # GET /referrers/new
  # GET /referrers/new.json
  def new
    @referrer = Referrer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @referrer }
    end
  end

  # GET /referrers/1/edit
  def edit
    @referrer = Referrer.find(params[:id])
  end

  # POST /referrers
  # POST /referrers.json
  def create
    @referrer = Referrer.new(params[:referrer])

    respond_to do |format|
      if @referrer.save
        format.html { redirect_to @referrer, notice: 'Referrer was successfully created.' }
        format.json { render json: @referrer, status: :created, location: @referrer }
      else
        format.html { render action: "new" }
        format.json { render json: @referrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /referrers/1
  # PUT /referrers/1.json
  def update
    @referrer = Referrer.find(params[:id])

    respond_to do |format|
      if @referrer.update_attributes(params[:referrer])
        format.html { redirect_to @referrer, notice: 'Referrer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @referrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referrers/1
  # DELETE /referrers/1.json
  def destroy
    @referrer = Referrer.find(params[:id])
    @referrer.destroy

    respond_to do |format|
      format.html { redirect_to referrers_url }
      format.json { head :no_content }
    end
  end
end
