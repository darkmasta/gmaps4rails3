class SucsController < ApplicationController
  # GET /sucs
  # GET /sucs.json
  def index
    @sucs = Suc.all
    @json = Suc.all.to_gmaps4rails
    @markers ='[
                {"description": "deneme", "title": "deneme", "sidebar": "", "lng": "31.828403", "lat": "42.715263", "picture": "",
                 "width": "", "height": ""},
                  {"lng": "29.828403", "lat": "40.715263" }
               ]'                       



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sucs }
    end
  end

  # GET /sucs/1
  # GET /sucs/1.json
  def show
    @suc = Suc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suc }
    end
  end

  # GET /sucs/new
  # GET /sucs/new.json
  def new
    @suc = Suc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suc }
    end
  end

  # GET /sucs/1/edit
  def edit
    @suc = Suc.find(params[:id])
  end

  # POST /sucs
  # POST /sucs.json
  def create
    @suc = Suc.new(params[:suc])

    respond_to do |format|
      if @suc.save
        format.html { redirect_to @suc, notice: 'Suc was successfully created.' }
        format.json { render json: @suc, status: :created, location: @suc }
      else
        format.html { render action: "new" }
        format.json { render json: @suc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sucs/1
  # PUT /sucs/1.json
  def update
    @suc = Suc.find(params[:id])

    respond_to do |format|
      if @suc.update_attributes(params[:suc])
        format.html { redirect_to @suc, notice: 'Suc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucs/1
  # DELETE /sucs/1.json
  def destroy
    @suc = Suc.find(params[:id])
    @suc.destroy

    respond_to do |format|
      format.html { redirect_to sucs_url }
      format.json { head :no_content }
    end
  end
end
