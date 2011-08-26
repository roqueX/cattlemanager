class CattleIdsController < ApplicationController
  # GET /cattle_ids
  # GET /cattle_ids.xml
  def index
    @cattle_ids = CattleId.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cattle_ids }
    end
  end

  # GET /cattle_ids/1
  # GET /cattle_ids/1.xml
  def show
    @cattle_id = CattleId.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cattle_id }
    end
  end

  # GET /cattle_ids/new
  # GET /cattle_ids/new.xml
  def new
    @cattle_id = CattleId.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cattle_id }
    end
  end

  # GET /cattle_ids/1/edit
  def edit
    @cattle_id = CattleId.find(params[:id])
  end

  # POST /cattle_ids
  # POST /cattle_ids.xml
  def create
    @cattle_id = CattleId.new(params[:cattle_id])

    respond_to do |format|
      if @cattle_id.save
        format.html { redirect_to(@cattle_id, :notice => 'Cattle was successfully created.') }
        format.xml  { render :xml => @cattle_id, :status => :created, :location => @cattle_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cattle_id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cattle_ids/1
  # PUT /cattle_ids/1.xml
  def update
    @cattle_id = CattleId.find(params[:id])

    respond_to do |format|
      if @cattle_id.update_attributes(params[:cattle_id])
        format.html { redirect_to(@cattle_id, :notice => 'Cattle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cattle_id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cattle_ids/1
  # DELETE /cattle_ids/1.xml
  def destroy
    @cattle_id = CattleId.find(params[:id])
    @cattle_id.destroy

    respond_to do |format|
      format.html { redirect_to(cattle_ids_url) }
      format.xml  { head :ok }
    end
  end
end
