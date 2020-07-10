class OptionValueVariationsController < ApplicationController
  before_action :set_option_value_variation, only: [:show, :edit, :update, :destroy]

  # GET /option_value_variations
  # GET /option_value_variations.json
  def index
    @option_value_variations = OptionValueVariation.all
  end

  # GET /option_value_variations/1
  # GET /option_value_variations/1.json
  def show
  end

  # GET /option_value_variations/new
  def new
    @option_value_variation = OptionValueVariation.new
  end

  # GET /option_value_variations/1/edit
  def edit
  end

  # POST /option_value_variations
  # POST /option_value_variations.json
  def create
    @option_value_variation = OptionValueVariation.new(option_value_variation_params)

    respond_to do |format|
      if @option_value_variation.save
        format.html { redirect_to @option_value_variation, notice: 'Option value variation was successfully created.' }
        format.json { render :show, status: :created, location: @option_value_variation }
      else
        format.html { render :new }
        format.json { render json: @option_value_variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_value_variations/1
  # PATCH/PUT /option_value_variations/1.json
  def update
    respond_to do |format|
      if @option_value_variation.update(option_value_variation_params)
        format.html { redirect_to @option_value_variation, notice: 'Option value variation was successfully updated.' }
        format.json { render :show, status: :ok, location: @option_value_variation }
      else
        format.html { render :edit }
        format.json { render json: @option_value_variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_value_variations/1
  # DELETE /option_value_variations/1.json
  def destroy
    @option_value_variation.destroy
    respond_to do |format|
      format.html { redirect_to option_value_variations_url, notice: 'Option value variation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_value_variation
      @option_value_variation = OptionValueVariation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_value_variation_params
      params.require(:option_value_variation).permit(:optionValue_id, :variation_id)
    end
end
