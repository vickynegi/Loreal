class TagsController < ApplicationController
  before_action :set_tag, only: [:update, :destroy]

  def index
    @tag = Tag.all
    render json: @tag
  end

  def create
  	@tag = Tag.new(tag_params)
    if @tag.save
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
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
  end

  private

    def set_tag
      @tag = tag.find(params[:id])
    end

    def tag_params
      params.require(:tag).permit(:name, :description)
    end
end
