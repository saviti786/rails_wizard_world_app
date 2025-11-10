class ElixirsController < ApplicationController
  def index
    if params[:query].present?
      @elixirs = Elixir.where("name LIKE ? OR difficulty LIKE ?",
                              "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @elixirs = Elixir.all
    end
  end

  def show
    @elixir = Elixir.find(params[:id])
  end
end
