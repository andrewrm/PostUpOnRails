class GeopostsController < ApplicationController
  # GET /geoposts
  # GET /geoposts.json
  def index
    @geoposts = Geopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geoposts }
    end
  end

  # GET /geoposts/1
  # GET /geoposts/1.json
  def show
    @geopost = Geopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geopost }
    end
  end

  # GET /geoposts/new
  # GET /geoposts/new.json
  def new
    @geopost = Geopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geopost }
    end
  end

  # GET /geoposts/1/edit
  def edit
    @geopost = Geopost.find(params[:id])
  end

  # POST /geoposts
  # POST /geoposts.json
  def create
    @geopost = Geopost.new(params[:geopost])

    respond_to do |format|
      if @geopost.save
        format.html { redirect_to @geopost, notice: 'Geopost was successfully created.' }
        format.json { render json: @geopost, status: :created, location: @geopost }
      else
        format.html { render action: "new" }
        format.json { render json: @geopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geoposts/1
  # PUT /geoposts/1.json
  def update
    @geopost = Geopost.find(params[:id])

    respond_to do |format|
      if @geopost.update_attributes(params[:geopost])
        format.html { redirect_to @geopost, notice: 'Geopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geoposts/1
  # DELETE /geoposts/1.json
  def destroy
    @geopost = Geopost.find(params[:id])
    @geopost.destroy

    respond_to do |format|
      format.html { redirect_to geoposts_url }
      format.json { head :no_content }
    end
  end
end
