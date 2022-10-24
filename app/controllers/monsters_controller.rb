class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster= Monster.new
  end

  def create
    @monster= Monster.new(monster_params)
    if @monster.save
      redirect_to monster_path(@monster)
    else
      render :new, status: :see_other
    end
  end

private

  def monster_params
    params.require(:monster).permit(:name,:description,:phone,:birthdate)
  end
end
