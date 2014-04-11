require_dependency "spec_score_api/application_controller"

module SpecScoreApi
  class TeammatesController < ApplicationController
    before_action :set_project
    before_action :set_teammate, only: [:show, :edit, :update, :destroy]

    # GET /teammates
    def index
      @teammates = @project.teammates
    end

    # GET /teammates/1
    def show
    end

    # GET /teammates/new
    def new
      @teammate = Teammate.new(project: @project)
    end

    # GET /teammates/1/edit
    def edit
    end

    # POST /teammates
    def create
      @teammate = Teammate.new(teammate_params)

      if @teammate.save
        redirect_to project_teammate_url(@project, @teammate), 
                    notice: 'Teammate was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /teammates/1
    def update
      if @teammate.update(teammate_params)
        redirect_to project_teammate_url(@project, @teammate), 
                    notice: 'Teammate was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /teammates/1
    def destroy
      @teammate.destroy
      redirect_to project_teammates_url(@project), 
                  notice: 'Teammate was successfully destroyed.'
    end

    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_teammate
      @teammate = Teammate.find(params[:id])
    end

    def set_project 
      @project = Project.find(params[:project_id])
    end

      # Only allow a trusted parameter "white list" through.
    def teammate_params
      params.require(:teammate).permit(:user_id, :project_id)
    end
  end
end
