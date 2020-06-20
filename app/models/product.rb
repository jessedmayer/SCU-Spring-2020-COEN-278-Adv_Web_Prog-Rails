class Product < ApplicationRecord
  has_many :lineitems

  #set(register) callback function, return true or false
  before_destroy :ensure_no_line_items

  #requires a product to have name,description,image
  validates(:name, :description, :image, presence: true)
  #requires a product to have a nonzero numerical price
  validates(:price, numericality:{greater_than_or_equal_to: 0.01})
  #requires product image to be of gif, jpg, or png file type
  validates(:image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message:"must be GIF, JPG, or PNG images"})

  #makes sure there are no line items in cart
  def ensure_no_line_items
    if self.lineitems.empty?
      return true
    else
      errors.add(:base, "line items present")
      return false
    end
  end
end
