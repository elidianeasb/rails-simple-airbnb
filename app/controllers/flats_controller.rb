class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: "Flat was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_url, notice: "Flat was successfully destroyed.", status: :see_other
  end

  def search
    @flats = Flat.where("name LIKE '%garden%'")
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture)
  end
end
