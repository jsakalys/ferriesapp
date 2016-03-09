class FerriesController < ApplicationController
  before_action :set_ferry, only: [:show, :edit, :update, :destroy]

  # GET /ferries
  # GET /ferries.json
  def index
    @ferries = Ferry.all
  end

  # GET /ferries/1
  # GET /ferries/1.json
  def show
  end

  # GET /ferries/new
  def new
    @ferry = Ferry.new
  end

  # GET /ferries/1/edit
  def edit
  end

  # POST /ferries
  # POST /ferries.json
  def create
    @ferry = Ferry.new(ferry_params)

    respond_to do |format|
      if @ferry.save
        format.html { redirect_to @ferry, notice: 'Ferry was successfully created.' }
        format.json { render :show, status: :created, location: @ferry }
      else
        format.html { render :new }
        format.json { render json: @ferry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ferries/1
  # PATCH/PUT /ferries/1.json
  def update
    respond_to do |format|
      if @ferry.update(ferry_params)
        format.html { redirect_to @ferry, notice: 'Ferry was successfully updated.' }
        format.json { render :show, status: :ok, location: @ferry }
      else
        format.html { render :edit }
        format.json { render json: @ferry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ferries/1
  # DELETE /ferries/1.json
  def destroy
    @ferry.destroy
    respond_to do |format|
      format.html { redirect_to ferries_url, notice: 'Ferry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ferry
      @ferry = Ferry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ferry_params
      params.require(:ferry).permit(:name)
    end
end
