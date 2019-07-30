class SectionsController < ApplicationController
  def index
    @section= Section.where("visible='true'")
    @section= Section.order(:position)

  end

  def create
    @section= Section.new(section_params)
    if @section.save
      redirect_to sections_path
    else
      render 'new'
  end
end

  def edit
  @section= Section.find(params[:id])
  end

  def update
    @section= Section.find(params[:id])

    if @section.update_attributes(section_params)
      redirect_to sections_path
    else
      render 'edit'
  end
  end

  def new
    @section= Section.new
  end

  def show
    @section= Section.find(params[:id])
  end

  def destroy
    @section= Section.find(params[:id])
    if @section.destroy
      redirect_to sections_path

    end
  end

  protected

    def section_params
      params.require(:section).permit(:name,:page_id,:position,:visible,:content_type,:content)
    end
end
