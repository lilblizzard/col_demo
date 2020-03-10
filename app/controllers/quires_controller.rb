class QuiresController < ApplicationController
  before_action :set_manuscript, only: [:new, :create, :show]
  before_action :set_quire, only: [:show, :edit, :update, :destroy]

  # GET /quires/1
  # GET /quires/1.json
  def show
  end

  # GET /quires/new
  def new
    @quire = Quire.new
  end

  # GET /quires/1/edit
  def edit
  end

  # POST /quires
  # POST /quires.json
  def create
    @quire = @manuscript.quires.build(quire_params)
    # @quire = Quire.new(quire_params)

    respond_to do |format|
      if @quire.save
        format.html { redirect_to @manuscript, notice: 'Quire was successfully created.' }
        format.json { render :show, status: :created, location: @quire }
      else
        format.html { render :new }
        format.json { render json: @quire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quires/1
  # PATCH/PUT /quires/1.json
  def update
    respond_to do |format|
      if @quire.update(quire_params)
        format.html { redirect_to @manuscript, notice: 'Quire was successfully updated.' }
        format.json { render :show, status: :ok, location: @quire }
      else
        format.html { render :edit }
        format.json { render json: @quire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quires/1
  # DELETE /quires/1.json
  def destroy
    @quire.destroy
    respond_to do |format|
      format.html { redirect_to @manuscript, notice: 'Quire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quire
    # TODO: this is throwing an error
    @quire = Quire.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def quire_params
    params.require(:quire).permit(:quire_number, :manuscript_id)
  end

  def set_manuscript
    @manuscript = Manuscript.find(params[:manuscript_id])
  end
end
