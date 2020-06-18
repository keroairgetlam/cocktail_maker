class CocktailsController < ApplicationController
  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # GET /cocktails/1
  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  # GET /cocktailss/1/edit
  # def edit
  # end

  # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = current_user
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def dashboard
    @cocktails = Cocktail.where(user_id: current_user)
  end

#   # PATCH/PUT /cocktails/1
#   def update
#     if @cocktail.update(cocktail_params)
#       redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
#     else
#       render :edit
#     end
#   end

#   # DELETE /cocktails/1
#   def destroy
#     @cocktail.destroy
#     redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
#   end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
