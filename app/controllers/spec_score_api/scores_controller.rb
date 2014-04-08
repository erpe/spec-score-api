require_dependency "spec_score_api/application_controller"

module SpecScoreApi
  class ScoresController < ApplicationController
    before_action :set_score, only: [:show, :edit, :update, :destroy]

    # GET /scores
    def index
      @scores = Score.all
      respond_to do |format|
        format.json { render json: @scores }
        format.html 
      end
    end

    # GET /scores/1
    def show
    end

    # GET /scores/new
    def new
      @score = Score.new
    end

    # GET /scores/1/edit
    def edit
    end

    # POST /scores
    def create
      @score = Score.new(score_params)

      if @score.save
        redirect_to @score, notice: 'Score was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /scores/1
    def update
      if @score.update(score_params)
        redirect_to @score, notice: 'Score was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /scores/1
    def destroy
      @score.destroy
      redirect_to scores_url, notice: 'Score was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_score
        @score = Score.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def score_params
        params.require(:score).permit(:user_id, :project_id, :duration, :specs, :succeeded, :failed, :pending)
      end
  end
end
