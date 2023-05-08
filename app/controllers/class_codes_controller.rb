class ClassCodesController < ApplicationController
  before_action :set_class_code, only: %i[ show edit update destroy ] 
  before_action :add_header
  skip_before_action :verify_authenticity_token

  # GET /class_codes or /class_codes.json
  def index
    all_class_codes = ClassCode.all
    response.set_header("X-Total-Count", all_class_codes.size)
    @class_codes = all_class_codes
  end

  # GET /class_codes/1 or /class_codes/1.json
  def show
  end

  # GET /class_codes/new
  def new
    @class_code = ClassCode.new
  end

  # GET /class_codes/1/edit
  def edit
  end

  # POST /class_codes or /class_codes.json
  def create
    @class_code = ClassCode.new(class_code_params)

    respond_to do |format|
      if @class_code.save
        format.html { redirect_to class_code_url(@class_code), notice: "Class code was successfully created." }
        format.json { render :show, status: :created, location: @class_code }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_codes/1 or /class_codes/1.json
  def update
    respond_to do |format|
      if @class_code.update(class_code_params)
        format.html { redirect_to class_code_url(@class_code), notice: "Class code was successfully updated." }
        format.json { render :show, status: :ok, location: @class_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_codes/1 or /class_codes/1.json
  def destroy
    @class_code.destroy

    respond_to do |format|
      format.html { redirect_to class_codes_url, notice: "Class code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_code
      @class_code = ClassCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_code_params
      params.require(:class_code).permit(:code, :description)
    end

    def add_header
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
      headers['Access-Control-Allow-Credentials'] = 'true'
      headers['Access-Control-Expose-Headers'] = 'X-Total-Count'
    end
end
