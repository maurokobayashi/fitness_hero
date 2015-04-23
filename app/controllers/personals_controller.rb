class PersonalsController < ApplicationController
  before_action :set_personal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @personals = Personal.all
    respond_with(@personals)
  end

  def show
    respond_with(@personal)
  end

  def new
    @personal = Personal.new
    respond_with(@personal)
  end

  def edit
  end

  def create
    @personal = Personal.new(personal_params)
    @personal.save
    respond_with(@personal)
  end

  def update
    @personal.update(personal_params)
    respond_with(@personal)
  end

  def destroy
    @personal.destroy
    respond_with(@personal)
  end

  private
    def set_personal
      @personal = Personal.find(params[:id])
    end

    def personal_params
      params.require(:personal).permit(:first_name, :last_name, :birthdate, :email, :mobile, :cref, :gender, :avatar, :status, :user_id)
    end
end
