class EggBundlesController < ApplicationController
  before_action :set_egg_bundle, only: [:show, :update, :destroy]

  # GET /egg_bundles
  def index
    @egg_bundles = EggBundle.all

    render json: @egg_bundles, include: :flock
  end

  # GET /egg_bundles/1
  def show
    render json: @egg_bundle
  end

  # POST /egg_bundles
  def create
    @egg_bundle = Flock.find(params[:flock_id]).egg_bundles.build(egg_bundle_params)

    if @egg_bundle.save
      render json: @egg_bundle, include: :flock, status: :created, location: @egg_bundle
    else
      render json: @egg_bundle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /egg_bundles/1
  def update
    if @egg_bundle.update(egg_bundle_params)
      render json: @egg_bundle
    else
      render json: @egg_bundle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /egg_bundles/1
  def destroy
    @flock = Flock.find(@egg_bundle.flock_id)
    @egg_bundle.destroy
    render json: @flock
    # binding.pry
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_bundle
      @egg_bundle = EggBundle.find(params[:id])
    end

    def set_flock
      @flock = Flock.find(params[:flock_id])
    end

    # Only allow a trusted parameter "white list" through.
    def egg_bundle_params
      params.require(:egg_bundle).permit(:amount, :batch_number, :flock_id, :amount_fertilized, :amount_hatched, :start_date, :first_hatch, :init_temp, :init_humid, :lockdown_temp, :lockdown_humid)
    end
end
