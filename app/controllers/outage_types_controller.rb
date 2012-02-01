class OutageTypesController < ApplicationController
  # GET /outage_types
  # GET /outage_types.json
  def index
    @outage_types = OutageType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outage_types }
    end
  end

  # GET /outage_types/1
  # GET /outage_types/1.json
  def show
    @outage_type = OutageType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outage_type }
    end
  end

  # GET /outage_types/new
  # GET /outage_types/new.json
  def new
    @outage_type = OutageType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outage_type }
    end
  end

  # GET /outage_types/1/edit
  def edit
    @outage_type = OutageType.find(params[:id])
  end

  # POST /outage_types
  # POST /outage_types.json
  def create
    @outage_type = OutageType.new(params[:outage_type])

    respond_to do |format|
      if @outage_type.save
        format.html { redirect_to @outage_type, notice: 'Outage type was successfully created.' }
        format.json { render json: @outage_type, status: :created, location: @outage_type }
      else
        format.html { render action: "new" }
        format.json { render json: @outage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outage_types/1
  # PUT /outage_types/1.json
  def update
    @outage_type = OutageType.find(params[:id])

    respond_to do |format|
      if @outage_type.update_attributes(params[:outage_type])
        format.html { redirect_to @outage_type, notice: 'Outage type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outage_types/1
  # DELETE /outage_types/1.json
  def destroy
    @outage_type = OutageType.find(params[:id])
    @outage_type.destroy

    respond_to do |format|
      format.html { redirect_to outage_types_url }
      format.json { head :no_content }
    end
  end
end
