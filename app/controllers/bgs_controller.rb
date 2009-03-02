class BgsController < ApplicationController
  # GET /bgs
  # GET /bgs.xml
  def index
    @bgs = Bg.find(:all)

    respond_to do |format|
      format.html { render :layout => 'admin' }
      format.xml  { render :xml => @bgs }
    end
  end

  # GET /bgs/1
  # GET /bgs/1.xml
  def show
    @bg = Bg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bg }
    end
  end

  # GET /bgs/new
  # GET /bgs/new.xml
  def new
    @bg = Bg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bg }
    end
  end

  # GET /bgs/1/edit
  def edit
    @bg = Bg.first
    render :layout => 'admin'
  end

  # POST /bgs
  # POST /bgs.xml
  def create
    @bg = Bg.new(params[:bg])

    respond_to do |format|
      if @bg.save
        flash[:notice] = 'Bg was successfully created.'
        format.html { redirect_to(@bg) }
        format.xml  { render :xml => @bg, :status => :created, :location => @bg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bgs/1
  # PUT /bgs/1.xml
  def update
    @bg = Bg.find(params[:id])

    if @bg.update_attributes(params[:bg])
      flash[:notice] = 'Bg was successfully updated.'
      redirect_to "/bgs/1/edit"
    else
      redirect_to "/bgs/1/edit"
    end
  end

  # DELETE /bgs/1
  # DELETE /bgs/1.xml
  def destroy
    @bg = Bg.find(params[:id])
    @bg.destroy

    respond_to do |format|
      format.html { redirect_to(bgs_url) }
      format.xml  { head :ok }
    end
  end
end
