class DrawingsController < ApplicationController
  
  before_filter :authenticate_user!
  load_and_authorize_resource
  before_filter :load_permissions

  def index
    @drawings = Drawing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drawings }
    end
  end

  def new
    @parts = Part.all
    @drawing = Drawing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drawing }
    end
  end

  def create
    @parts = Part.all
    @drawing = Drawing.new(params[:drawing])

    respond_to do |format|
      if @drawing.save
        format.html { redirect_to @drawing, notice: 'Drawing was successfully created.' }
        format.json { render json: @drawing, status: :created, location: @drawing }
      else
        format.html { render action: "new" }
        format.json { render json: @drawing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @drawing = Drawing.find(params[:id])
    @drawing.destroy

    respond_to do |format|
      format.html { redirect_to drawings_url }
      format.json { head :no_content }
    end
  end
end
