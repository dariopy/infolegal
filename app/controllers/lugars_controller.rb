class LugarsController < ApplicationController
  # GET /lugars
  # GET /lugars.xml
  def index
    @lugars = Lugar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lugars }
    end
  end

  # GET /lugars/1
  # GET /lugars/1.xml
  def show
    @lugar = Lugar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lugar }
    end
  end

  # GET /lugars/new
  # GET /lugars/new.xml
  def new
    @lugar = Lugar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lugar }
    end
  end

  # GET /lugars/1/edit
  def edit
    @lugar = Lugar.find(params[:id])
  end

  # POST /lugars
  # POST /lugars.xml
  def create
    @lugar = Lugar.new(params[:lugar])

    respond_to do |format|
      if @lugar.save
        format.html { redirect_to(@lugar, :notice => 'Lugar was successfully created.') }
        format.xml  { render :xml => @lugar, :status => :created, :location => @lugar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lugar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lugars/1
  # PUT /lugars/1.xml
  def update
    @lugar = Lugar.find(params[:id])

    respond_to do |format|
      if @lugar.update_attributes(params[:lugar])
        format.html { redirect_to(@lugar, :notice => 'Lugar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lugar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lugars/1
  # DELETE /lugars/1.xml
  def destroy
    @lugar = Lugar.find(params[:id])
    @lugar.destroy

    respond_to do |format|
      format.html { redirect_to(lugars_url) }
      format.xml  { head :ok }
    end
  end
end
