class PagesController < ApplicationController
  def home
    cocktail = Cocktail.first(10)
    @cocktails = cocktail.sample(6)
  end
end
