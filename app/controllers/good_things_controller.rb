class GoodThingsController < ApplicationController

  before_filter :auth
  
  # GET /good_things
  # GET /good_things.xml
  def index
    @good_things = current_user.good_things.order("count desc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @good_things }
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

  # POST /good_things
  # POST /good_things.xml
  def create
    @good_thing = GoodThing.new(params[:good_thing])
    @good_thing.user_id = current_user.id

    respond_to do |format|
      if @good_thing.save
        format.html { redirect_to(good_things_path, :notice => 'Good thing was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # POST /good_things/1/done
  def done
    @good_thing = current_user.good_things.find(params[:id])
    @good_thing.count = @good_thing.count + 1

    respond_to do |format|
      if @good_thing.save
        format.html { redirect_to(good_things_path, :notice => "It's good!") }
        format.xml  { render :xml => good_things_path, :status => :created, :location => @good_thing }
      else
        format.html { render :action => "index" }
        format.xml  { render :xml => @good_thing.errors, :status => :unprocessable_entity }
      end  
    end
  end

  # DELETE /good_things/1
  # DELETE /good_things/1.xml
  def destroy
    @good_thing = current_user.good_things.find(params[:id])
    @good_thing.destroy

    respond_to do |format|
      format.html { redirect_to(good_things_url) }
      format.xml  { head :ok }
    end
  end
end
