class ListItemsController < ApplicationController
  

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_list_item
      @list_item = ListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_item_params
      #params.require(:list_item).permit(:product_id, :list_id, :amount, :unit, :store, :complete, :product, product_attributes: [:name, :description, :_destroy])
      params.require(:list_item).permit!
    end

end
