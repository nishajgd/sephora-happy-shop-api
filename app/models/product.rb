class Product < ApplicationRecord
  self.per_page = 10
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true

  STARTING_PRICE = 0
  MID_PRICE = 200
  ENDING_PRICE = 300
  
  # TODO Code cleanup and test cases
  def self.search(search)
    products = Product.all
    if search.present?
      price_from, price_to = Product.calculate_prices(search[:price]) if search[:price].present?
      if search[:categories].present? && search[:price].blank?
        products = by_category(search)
      elsif search[:price].present? && search[:categories].blank?
        products = by_price(price_from, price_to)
      elsif search[:price].present? && search[:categories].present?
        products = by_both_price_and_category(search, price_from, price_to)
      end
    end
    sort(search, products)
  end

  def self.by_category(search)
    where(["category IN (?)", search[:categories]])
  end

  def self.by_price(from, to)
    where(["price between ? and ?", from, to])
  end

  def self.by_both_price_and_category(search, price_from, price_to)
    where(["category IN (?) and price between ? and ?", search[:categories], price_from, price_to])
  end

  def self.calculate_prices(price)
    if price.include?("lt_200") && price.include?("gt_200")
      price_from, price_to = STARTING_PRICE, ENDING_PRICE
    elsif price.include?("gt_200")
      price_from, price_to = MID_PRICE, ENDING_PRICE
    elsif price.include?("lt_200")
      price_from, price_to = STARTING_PRICE, MID_PRICE
    end
    return price_from, price_to 
  end

  def self.sort(search, products)
    search[:sort].present? ? products.order(price: search[:sort]) : products.order(created_at: :desc);
  end

end