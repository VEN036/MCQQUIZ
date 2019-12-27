class CompanyregsController < ApplicationController
  before_action :set_companyreg, only: [:show, :edit, :update, :destroy]

  # GET /companyregs
  # GET /companyregs.json
  def index
    @companyregs = Companyreg.all
  end

  # GET /companyregs/1
  # GET /companyregs/1.json
  def show
  end

  # GET /companyregs/new
  def new
    @companyreg = Companyreg.new
  end

  # GET /companyregs/1/edit
  def edit
  end

  # POST /companyregs
  # POST /companyregs.json
  def create
    @companyreg = Companyreg.new(companyreg_params)

    respond_to do |format|
      if @companyreg.save
        format.html { redirect_to @companyreg, notice: 'Companyreg was successfully created.' }
        format.json { render :show, status: :created, location: @companyreg }
      else
        format.html { render :new }
        format.json { render json: @companyreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyregs/1
  # PATCH/PUT /companyregs/1.json
  def update
    respond_to do |format|
      if @companyreg.update(companyreg_params)
        format.html { redirect_to @companyreg, notice: 'Companyreg was successfully updated.' }
        format.json { render :show, status: :ok, location: @companyreg }
      else
        format.html { render :edit }
        format.json { render json: @companyreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyregs/1
  # DELETE /companyregs/1.json
  def destroy
    @companyreg.destroy
    respond_to do |format|
      format.html { redirect_to companyregs_url, notice: 'Companyreg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyreg
      @companyreg = Companyreg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companyreg_params
      params.require(:companyreg).permit(:companyid, :, :companyname, :, :testname, :, :testdate, :)
    end
end
