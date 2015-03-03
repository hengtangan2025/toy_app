class MincropostsController < ApplicationController
  before_action :set_mincropost, only: [:show, :edit, :update, :destroy]

  # GET /mincroposts
  # GET /mincroposts.json
  def index
    @mincroposts = Mincropost.all
  end

  # GET /mincroposts/1
  # GET /mincroposts/1.json
  def show
  end

  # GET /mincroposts/new
  def new
    @mincropost = Mincropost.new
  end

  # GET /mincroposts/1/edit
  def edit
  end

  # POST /mincroposts
  # POST /mincroposts.json
  def create
    @mincropost = Mincropost.new(mincropost_params)

    respond_to do |format|
      if @mincropost.save
        format.html { redirect_to @mincropost, notice: 'Mincropost was successfully created.' }
        format.json { render :show, status: :created, location: @mincropost }
      else
        format.html { render :new }
        format.json { render json: @mincropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mincroposts/1
  # PATCH/PUT /mincroposts/1.json
  def update
    respond_to do |format|
      if @mincropost.update(mincropost_params)
        format.html { redirect_to @mincropost, notice: 'Mincropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @mincropost }
      else
        format.html { render :edit }
        format.json { render json: @mincropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mincroposts/1
  # DELETE /mincroposts/1.json
  def destroy
    @mincropost.destroy
    respond_to do |format|
      format.html { redirect_to mincroposts_url, notice: 'Mincropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mincropost
      @mincropost = Mincropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mincropost_params
      params.require(:mincropost).permit(:content, :user_id)
    end
end
