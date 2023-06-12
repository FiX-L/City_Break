class EnigmasController < ApplicationController
  before_action :set_enigma, only: [:show, :update, :destroy]

  def index
    @enigmas = Enigma.all
  end

  def show
    @answers = @enigma.answers
  end

  def new
    @enigma = Enigma.new
  end

  def create
    @enigma = Enigma.new(enigma_params)

    if @enigma.save
      redirect_to @enigma, notice: 'Enigma was successfully created.'
    else
      render :new
    end
  end

  def update
    if @enigma.update(enigma_params)
      redirect_to @enigma, notice: 'Enigma was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @enigma.destroy
    redirect_to enigmas_url, notice: 'Enigma was successfully destroyed.'
  end

  private

  #PAS CERTAIN, Permet de choisir l'énigme et ses POI, Hints associés en fonction.
  def set_enigma
    @enigma = Enigma.find(params[:id])
  end

  def enigma_params
    params.require(:enigma).permit(:title, :description, :image)
  end
end
