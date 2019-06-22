class UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy, :add_tag, :remove_tag]

  def index
    @user = User.includes(:tags).all
    render json: @user
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_tag
    @user.tag_data(params["tag_params"])
    render json: @user
  end

  def remove_tag
    @user.tags.find_by(id: params["tag_id"]).delete
    render json: @user
  end

  def sort_user_data
    @user = User.order(params["field_operation"])
    render json: @user
  end

  def filter_users_data
    @user = User.where("first_name LIKE ? OR last_name LIKE ? OR age = ? OR country LIKE ? OR state LIKE ? OR email_id LIKE ?",
     "%#{params["first_name"]}%", "%#{params["last_name"]}%", "#{params["age"]}", "%#{params["country"]}%", "%#{params["state"]}%",
     "%#{params["email_id"]}%")
    render json: @user
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:first_name, :last_name, :age, :country, :state, :email_id)
    end
end