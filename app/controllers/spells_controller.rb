class SpellsController < ApplicationController
  def index
    if params[:query].present?
      @spells = Spell.where(
        "name LIKE :q OR spell_type LIKE :q OR effect LIKE :q",
        q: "%#{params[:query]}%"
      )
    else
      @spells = Spell.all
    end
  end

  def show
    @spell = Spell.find(params[:id])
  end
end
