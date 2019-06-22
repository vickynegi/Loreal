class TagsController < ApplicationController
  before_action :set_tag, only: [:update, :destroy]

  def index
    @tag = Tag.all
    render json: @tag
  end

  def update
    if @tag.update(tag_params)
      render json: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_tag
      @tag = Tag.find_by(id: params["id"]) 
    end

    def tag_params
      params.permit(:name, :description)
    end
end