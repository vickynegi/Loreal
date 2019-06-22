class TagsController < ApplicationController
  before_action :set_tag, only: [:update, :destroy]

  def index
    @tag = Tag.all
    render json: @tag
  end

  def update
    if @user.tags.find_by(id: params["tag_id"]).update(params["tags_attr"].permit!)
      @tag = Tag.find_by(id: params["tag_id"])
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
      @user = User.find_by(id: params["user_id"]) 
    end

    def tag_params
      params.permit(:name, :description)
    end
end