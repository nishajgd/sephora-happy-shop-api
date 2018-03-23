module Api
  module V1
    class ProductsController < ApplicationController
      # GET /products
      def index
        products = Product.search(filtering_params)
        products = products.page(params[:page] ? params[:page] : 1)
        render json: products, meta: pagination_meta(products)
      end

      # GET /products/1
      def show
        product = Product.find(params[:id])
        render json: product
      end

      private

      def filtering_params
        params.slice(:price, :categories, :sort)
      end

      def pagination_meta(object)
        {
          current_page: object.current_page,
          next_page: object.next_page,
          prev_page: object.previous_page,
          total_pages: object.total_pages,
          total_count: object.total_entries
        }
      end    
    end
  end
end
