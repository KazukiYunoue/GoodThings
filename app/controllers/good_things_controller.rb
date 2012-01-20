class GoodThingsController < ApplicationController
  # GET /good_things
  # GET /good_things.xml
  def index
    @good_things = GoodThing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @good_things }
    end
  end

  # GET /good_things/1
  # GET /good_things/1.xml
  def show
    @good_thing = GoodThing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @good_thing }
    end
  end

  # GET /good_things/new
  # GET /good_things/new.xml
  def new
    @good_thing = GoodThing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @good_thing }
    end
  end

  # GET /good_things/1/edit
  def edit
    @good_thing = GoodThing.find(params[:id])
  end

  # POST /good_things
  # POST /good_things.xml
  def create
    @good_thing = GoodThing.new(params[:good_thing])

    respond_to do |format|
      if @good_thing.save
        format.html { redirect_to(@good_thing, :notice => 'Good thing was successfully created.') }
        format.xml  { render :xml => @good_thing, :status => :created, :location => @good_thing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @good_thing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /good_things/1
  # PUT /good_things/1.xml
  def update
    @good_thing = GoodThing.find(params[:id])

    respond_to do |format|
      if @good_thing.update_attributes(params[:good_thing])
        format.html { redirect_to(@good_thing, :notice => 'Good thing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @good_thing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /good_things/1
  # DELETE /good_things/1.xml
  def destroy
    @good_thing = GoodThing.find(params[:id])
    @good_thing.destroy

    respond_to do |format|
      format.html { redirect_to(good_things_url) }
      format.xml  { head :ok }
    end
  end
end
