class ReservationsController < ApplicationController
  
  before_filter :load_schedules, :only => [:new, :edit, :create]
  
  # GET /reservations
  # GET /reservations.xml
  def index
    @reservations = Reservation.find(:all, :conditions => "confirm = 1", :order => 'created_at desc')

    respond_to do |format|
      format.html { render :layout => 'admin' }
      format.xml  { render :xml => @reservations }
      format.xls
    end
  end

  # GET /reservations/1
  # GET /reservations/1.xml
  def show
    @bg = Bg.first
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reservation }
    end
  end

  # GET /reservations/new
  # GET /reservations/new.xml
  def new
    @bg = Bg.first
    @reservation = Reservation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reservation }
    end
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservations
  # POST /reservations.xml
  def create
    @bg = Bg.first
    @reservation = Reservation.new(params[:reservation])

    respond_to do |format|
      if @reservation.save
        #flash[:notice] = 'Réservation valide.'
        format.html { redirect_to(@reservation) }
        format.xml  { render :xml => @reservation, :status => :created, :location => @reservation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reservation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reservations/1
  # PUT /reservations/1.xml
  def update
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      if @reservation.update_attributes(params[:reservation])
        #flash[:notice] = 'Réservation valide.'
        format.html { redirect_to(@reservation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reservation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.xml
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to(reservations_url) }
      format.xml  { head :ok }
    end
  end
  
  def load_schedules
    @schedules = Schedule.all(:conditions => "active = 1", :order => 'position')
  end
  
  def confirm
    @bg = Bg.first
    reservation = Reservation.find(params[:id])
    reservation.confirm = true
    reservation.save
    
  end
end
