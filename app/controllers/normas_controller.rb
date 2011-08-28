class NormasController < ApplicationController
  # GET /normas
  # GET /normas.xml
  def index
    @normas = Norma.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @normas }
    end
  end

  # GET /normas/1
  # GET /normas/1.xml
  def show
    @norma = Norma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @norma }
    end
  end

  # GET /normas/new
  # GET /normas/new.xml
  def new
    @norma = Norma.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @norma }
    end
  end

  # GET /normas/1/edit
  def edit
    @norma = Norma.find(params[:id])
  end

  # POST /normas
  # POST /normas.xml
  def create
    @norma = Norma.new(params[:norma])

    respond_to do |format|
      if @norma.save
        format.html { redirect_to(@norma, :notice => 'Norma was successfully created.') }
        format.xml  { render :xml => @norma, :status => :created, :location => @norma }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @norma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /normas/1
  # PUT /normas/1.xml
  def update
    @norma = Norma.find(params[:id])

    respond_to do |format|
      if @norma.update_attributes(params[:norma])
        format.html { redirect_to(@norma, :notice => 'Norma was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @norma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /normas/1
  # DELETE /normas/1.xml
  def destroy
    @norma = Norma.find(params[:id])
    @norma.destroy

    respond_to do |format|
      format.html { redirect_to(normas_url) }
      format.xml  { head :ok }
    end
  end
end
