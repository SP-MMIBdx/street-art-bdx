class StreetartsController < ApplicationController
  before_action :set_streetart, only: %i[ show edit update destroy ]

  # GET /streetarts or /streetarts.json
  def index
    @streetarts = Streetart.all
  end

  # GET /streetarts/1 or /streetarts/1.json
  def show
  end

  # GET /streetarts/new
  def new
    @streetart = Streetart.new
  end

  # GET /streetarts/1/edit
  def edit
  end

  # POST /streetarts or /streetarts.json
  def create
    @streetart = Streetart.new(streetart_params)

    respond_to do |format|
      if @streetart.save
        format.html { redirect_to @streetart, notice: "Streetart was successfully created." }
        format.json { render :show, status: :created, location: @streetart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @streetart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /streetarts/1 or /streetarts/1.json
  def update
    respond_to do |format|
      if @streetart.update(streetart_params)
        format.html { redirect_to @streetart, notice: "Streetart was successfully updated." }
        format.json { render :show, status: :ok, location: @streetart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @streetart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /streetarts/1 or /streetarts/1.json
  def destroy
    @streetart.destroy!

    respond_to do |format|
      format.html { redirect_to streetarts_path, status: :see_other, notice: "Streetart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_streetart
      @streetart = Streetart.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def streetart_params
      params.expect(streetart: [ :name, :location, :still_existing, :date_of_appearance, :summary, :photo, :artist_id, artist_ids: [] ])
    end
end
