class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  def index
    @portfolio_items = Portfolio.all
  end

  def show
    @portfolio_items = Portfolio.find(params[:id])
  end

  def new
    @portfolio_items = Portfolio.new
  end

  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item has been created.' }
        #format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
      end
    end

  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio_items = Portfolio.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

end
