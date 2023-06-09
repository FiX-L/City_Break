class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :set_enigma, only: [:index, :new, :create]

  def index
    @answers = @enigma.answers
  end

  def show
  end

  def new
    @answer = @enigma.answers.build
  end

  def create
    @answer = @enigma.answers.build(answer_params)

    if @answer.save
      redirect_to @answer, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def set_enigma
    @enigma = Enigma.find(params[:enigma_id])
  end

  def answer_params
    params.require(:answer).permit(:enigma_id, :is_good_answer, :content, :photo)
  end
end
