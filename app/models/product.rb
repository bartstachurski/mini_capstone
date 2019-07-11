class Product < ApplicationRecord
  has_many :images
  belongs_to :supplier
  has_many :orders
  
  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price + tax
  end

  def supplier
    @supplier = Supplier.find_by(id: supplier_id)
  end

  validates :name, presence: true
  validates :name, uniqueness: true


  validates :price, presence: true
  validates :price, numericality: {less_than: 1000000}
  validates :price, numericality: {greater_than: 0}


  validates :description, presence: true
  
  validates :image_url, length: {maximum: 255}

end