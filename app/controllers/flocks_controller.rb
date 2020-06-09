class FlocksController < ApplicationController
  before_action :set_flock, only: [:show, :update, :destroy]

  # GET /flocks
  def index
    @flocks = Flock.all

    render json: @flocks
  end

  # GET /flocks/1
  def show
    render json: @flock
  end

  # POST /flocks
  def create
    @flock = Flock.new(flock_params)

    if @flock.save
      render json: @flock, status: :created, location: @flock
    else
      render json: @flock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flocks/1
  def update
    if @flock.update(flock_params)
      render json: @flock
    else
      render json: @flock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flocks/1
  def destroy
    @flock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flock
      @flock = Flock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flock_params
      params.require(:flock).permit(:quantity, :name, :breed, :diet)
    end
end
