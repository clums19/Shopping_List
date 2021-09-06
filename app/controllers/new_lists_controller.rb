class NewListsController < ApplicationController
  before_action :set_new_list, only: [:show, :update, :destroy]

  # GET /new_lists
  def index
    @new_lists = NewList.all

    render json: @new_lists
  end

  # GET /new_lists/1
  def show
    render json: @new_list
  end

  # POST /new_lists
  def create
    @new_list = NewList.new(new_list_params)

    if @new_list.save
      render json: @new_list, status: :created, location: @new_list
    else
      render json: @new_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /new_lists/1
  def update
    if @new_list.update(new_list_params)
      render json: @new_list
    else
      render json: @new_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /new_lists/1
  def destroy
    @new_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_list
      @new_list = NewList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_list_params
      params.require(:new_list).permit(:title, :item, :complete)
    end
end
