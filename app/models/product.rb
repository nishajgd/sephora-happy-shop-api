class Product < ApplicationRecord
  self.per_page = 10
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  
  # ToDo will need to change according to front end changes and will write test cases too
  def self.search(search)
    # if search.blank?
    #   self.all
    # elsif search[:category].present? and search[:price].blank?
    #   self.where("category IN (?)", "%#{search[:category]}%") 
    # elsif search[:price].present? and search[:category].blank?
    #   self.where("price between ? and ?", "%#{search[:from_price]}%", "%#{search[:to_price]}%") 
    # else
    #   self.where("price between ? and ? and category IN (?)", "%#{search[:from_price]}%", "%#{search[:to_price]}%", "%#{search[:category]}%") 
    # end
  end
end