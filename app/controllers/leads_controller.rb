class LeadsController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:create]
  before_filter :authorize

  def index
    @leads = Lead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads }
    end
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
    @lead = Lead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/new
  # GET /leads/new.json
  def new
    @lead = Lead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/1/edit
  def edit
    @lead = Lead.find(params[:id])
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(params[:lead])
    
    branch = Branch.near(@lead.address, 50000).limit(1)
    @lead.branch = branch.first.location unless branch.first.nil?

    if Referrer.where(url: request.referrer).length == 0
      render json: "{ 'error': 'Bad Referrer' 'referrer' : '" + request.referrer + "'}", status: :unprocessable_entity 
    else    
      respond_to do |format|
        if @lead.save
          LeadMailer.lead_notice(@lead).deliver
          format.html { redirect_to @lead, notice: 'Lead was successfully created.' }
          format.json { render json: @lead, status: :created, location: @lead }
        else
          format.html { render action: "new" }
          format.json { render json: @lead.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /leads/1
  # PUT /leads/1.json
  def update
    @lead = Lead.find(params[:id])

    respond_to do |format|
      if @lead.update_attributes(params[:lead])
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to leads_url }
      format.json { head :no_content }
    end
  end
end
