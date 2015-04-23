class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @alunos = Aluno.all
    respond_with(@alunos)
  end

  def show
    respond_with(@aluno)
  end

  def new
    @aluno = Aluno.new
    respond_with(@aluno)
  end

  def edit
  end

  def create
    @aluno = Aluno.new(aluno_params)
    @aluno.save
    respond_with(@aluno)
  end

  def update
    @aluno.update(aluno_params)
    respond_with(@aluno)
  end

  def destroy
    @aluno.destroy
    respond_with(@aluno)
  end

  private
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    def aluno_params
      params.require(:aluno).permit(:first_name, :lastname, :birthdate, :email, :mobile, :gender, :avatar, :status, :user_id)
    end
end
