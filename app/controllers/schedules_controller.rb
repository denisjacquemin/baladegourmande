class SchedulesController < ApplicationController
  # GET /schedules
  # GET /schedules.xml
  def index
    @schedules = Schedule.all(:conditions => "active='t'", :order => 'position')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schedules }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.xml
  def show
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schedule }
    end
  end

  def new
    @schedule = Schedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @schedule }
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    @schedule.save
    Rails.logger.info(@schedule.to_yaml)
    
    render :update do |page|
      page['new_schedule'].remove
      @schedules = Schedule.all(:conditions => "active='t'", :order => 'position')
      page['schedules'].replace( render(:partial => 'schedules', :local => {:schedule => @schedules}) )
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.xml
  def update
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        flash[:notice] = 'Schedule was successfully updated.'
        format.html { redirect_to(@schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.xml
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to(schedules_url) }
      format.xml  { head :ok }
    end
  end
  
  def sort
    params[:schedules].each_with_index do |id, index|
      Schedule.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
  
  # set active attribute to false, logical delete, wich allow to keep information when 
  # a schedule is linked to a reservation.
  def desactivate
    schedule = Schedule.find(params[:id])
    schedule.update_attribute( 'active', false)
    render :update do |page|
      page["schedule_#{params[:id]}"].remove()
    end
  end
  
  def add
    @schedule = Schedule.new
    render :update do |page|
      page['schedules'].insert(render (:partial => 'new_schedule') )
      page['schedule_label'].focus()
    end
  end

end
