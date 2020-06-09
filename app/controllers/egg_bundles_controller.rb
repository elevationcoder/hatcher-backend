class EggBundlesController < ApplicationController
  before_action :set_egg_bundle, only: [:show, :update, :destroy]

  # GET /egg_bundles
  def index
    @egg_bundles = EggBundle.all

    render json: @egg_bundles
  end

  # GET /egg_bundles/1
  def show
    render json: @egg_bundle
  end

  # POST /egg_bundles
  def create
    @egg_bundle = EggBundle.new(egg_bundle_params)

    if @egg_bundle.save
      render json: @egg_bundle, status: :created, location: @egg_bundle
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
    @egg_bundle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_bundle
      @egg_bundle = EggBundle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def egg_bundle_params
      params.require(:egg_bundle).permit(:amount, :amount_fertilized, :amount_hatched, :start_date, :first_hatch, :init_temp, :init_humid, :lockdown_temp, :lockdown_humid)
    end
end
