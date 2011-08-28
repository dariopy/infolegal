class AmbitosController < ApplicationController
  # GET /ambitos
  # GET /ambitos.xml
  def index
    @ambitos = Ambito.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ambitos }
    end
  end

  # GET /ambitos/1
  # GET /ambitos/1.xml
  def show
    @ambito = Ambito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ambito }
    end
  end

  # GET /ambitos/new
  # GET /ambitos/new.xml
  def new
    @ambito = Ambito.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ambito }
    end
  end

  # GET /ambitos/1/edit
  def edit
    @ambito = Ambito.find(params[:id])
  end

  # POST /ambitos
  # POST /ambitos.xml
  def create
    @ambito = Ambito.new(params[:ambito])

    respond_to do |format|
      if @ambito.save
        format.html { redirect_to(@ambito, :notice => 'Ambito was successfully created.') }
        format.xml  { render :xml => @ambito, :status => :created, :location => @ambito }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ambito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ambitos/1
  # PUT /ambitos/1.xml
  def update
    @ambito = Ambito.find(params[:id])

    respond_to do |format|
      if @ambito.update_attributes(params[:ambito])
        format.html { redirect_to(@ambito, :notice => 'Ambito was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ambito.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ambitos/1
  # DELETE /ambitos/1.xml
  def destroy
    @ambito = Ambito.find(params[:id])
    @ambito.destroy

    respond_to do |format|
      format.html { redirect_to(ambitos_url) }
      format.xml  { head :ok }
    end
  end
end
