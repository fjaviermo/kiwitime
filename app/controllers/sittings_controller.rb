class SittingsController < ApplicationController
  # GET /sittings
  # GET /sittings.json
  def index
    @sittings = Sitting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sittings }
    end
  end

  # GET /sittings/1
  # GET /sittings/1.json
  def show
    @sitting = Sitting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sitting }
    end
  end

  # GET /sittings/new
  # GET /sittings/new.json
  def new
    @sitting = Sitting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sitting }
    end
  end

  # GET /sittings/1/edit
  def edit
    @sitting = Sitting.find(params[:id])
  end

  # POST /sittings
  # POST /sittings.json
  def create
    @sitting = Sitting.new(params[:sitting])

    respond_to do |format|
      if @sitting.save
        format.html { redirect_to @sitting, notice: 'Sitting was successfully created.' }
        format.json { render json: @sitting, status: :created, location: @sitting }
      else
        format.html { render action: "new" }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sittings/1
  # PUT /sittings/1.json
  def update
    @sitting = Sitting.find(params[:id])

    respond_to do |format|
      if @sitting.update_attributes(params[:sitting])
        format.html { redirect_to @sitting, notice: 'Sitting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sittings/1
  # DELETE /sittings/1.json
  def destroy
    @sitting = Sitting.find(params[:id])
    @sitting.destroy

    respond_to do |format|
      format.html { redirect_to sittings_url }
      format.json { head :no_content }
    end
  end
end
