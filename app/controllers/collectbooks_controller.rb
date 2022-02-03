class CollectbooksController < ApplicationController
  before_action :set_collectbook, only: %i[ show edit update destroy ]

  # GET /collectbooks or /collectbooks.json
  def index
    @collectbooks = Collectbook.all
  end

  # GET /collectbooks/1 or /collectbooks/1.json
  def show
  end

  # GET /collectbooks/new
  def new
    @collectbook = Collectbook.new
  end

  # GET /collectbooks/1/edit
  def edit
  end

    # GET /collectbooks/1/edit
  def delete
    @collectbook = Collectbook.find(params[:id])
  end
  # POST /collectbooks or /collectbooks.json
  def create
    @collectbook = Collectbook.new(collectbook_params)

    respond_to do |format|
      if @collectbook.save
        format.html { redirect_to collectbook_url(@collectbook), notice: "Collectbook was successfully created." }
        format.json { render :show, status: :created, location: @collectbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collectbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collectbooks/1 or /collectbooks/1.json
  def update
    respond_to do |format|
      if @collectbook.update(collectbook_params)
        format.html { redirect_to collectbook_url(@collectbook), notice: "Collectbook was successfully updated." }
        format.json { render :show, status: :ok, location: @collectbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collectbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectbooks/1 or /collectbooks/1.json
  def destroy
    @collectbook = Collectbook.find(params[:id])
    @collectbook.destroy

    respond_to do |format|
      format.html { redirect_to collectbooks_url, notice: "Collectbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collectbook
      @collectbook = Collectbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collectbook_params
      params.require(:collectbook).permit(:title, :author, :price, :time)
    end
end
