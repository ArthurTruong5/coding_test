class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]
  helper_method :sort_column, :sort_direction

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.search(params[:search]).order(sort_column + ' ' + sort_direction)
end

  # GET /lists/1
  # GET /lists/1.json
  def show; end

  def remove_all
    List.destroy_all
    redirect_to lists_path, notice: "You have removed all lists!"
end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit; end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
      List.import(params[:file])
      redirect_to lists_path, notice: 'CSV sucessfully imported.'
    rescue StandardError
      redirect_to lists_path, alert: 'Invalid CSV file format.'
  end

  private



  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def list_params
    params.require(:list).permit(:name, :date, :number, :description)
  end

  def sortable_columns
    %w[Name Date Number Description]
  end

  def sort_column
    sortable_columns.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
