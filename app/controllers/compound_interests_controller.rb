class CompoundInterestsController < ApplicationController

  def show
    @compound_interest = CompoundInterest.new
  end

  def create
    @compound_interest = CompoundInterest.new(compound_interest_params)
    if @compound_interest.submit
      render :show
    else
      render :show
    end
  end

  private

  def compound_interest_params
    params.require(:compound_interest).permit(:current_principal, :years_to_grow, :interest_rate)
  end

end
