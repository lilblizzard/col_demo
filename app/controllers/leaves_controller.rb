class LeavesController < ApplicationController
  before_action :set_quire
  before_action :set_leaf, only: [:show, :edit, :update, :destroy]

  # GET /leaves
  # GET /leaves.json
  def index
    @leaves = Leaf.all
  end

  # GET /leaves/1
  # GET /leaves/1.json
  def show
  end

  # GET /leaves/new
  def new
    @leaf = Leaf.new
  end

  # GET /leaves/1/edit
  def edit
  end

  # POST /leaves
  # POST /leaves.json
  def create
    @leaf = @quire.leaves.build(leaf_params)

    respond_to do |format|
      if @leaf.save
        format.html { redirect_to manuscript_quire_path(@quire.manuscript, @quire), notice: 'Leaf was successfully created.' }
        format.json { render :show, status: :created, location: @leaf }
      else
        format.html { render :new }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaves/1
  # PATCH/PUT /leaves/1.json
  def update
    respond_to do |format|
      if @leaf.update(leaf_params)
        format.html { redirect_to @leaf, notice: 'Leaf was successfully updated.' }
        format.json { render :show, status: :ok, location: @leaf }
      else
        format.html { render :edit }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaves/1
  # DELETE /leaves/1.json
  def destroy
    @leaf.destroy
    respond_to do |format|
      format.html { redirect_to leaves_url, notice: 'Leaf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf
      @leaf = Leaf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leaf_params
      params.require(:leaf).permit(:quire_id, :folio_number, :position, :single)
    end

  def set_quire
    @quire = Quire.find(params[:quire_id])
  end
end
