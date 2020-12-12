class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  def index
    @portfolio_items = Portfolio.all
  end

  def show
    @portfolio_items = Portfolio.find(params[:id])
  end

  def edit
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
      else
        format.html { render :new }
      end
    end

  end

  def update
    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_items = Portfolio.find(params[:id])
    @portfolio_items.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_url, notice: 'Portfolio was succesfully destroyed' }
      format.json { head :no_content }
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
