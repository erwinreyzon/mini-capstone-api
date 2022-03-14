class Product < ApplicationRecord

  def is_discounted?
    if price < 10
      discount = true
    else
      discount = false
    end
    discount
  end

  def tax
    tax = price * 0.09
    tax
  end

  def total
    tax = price * 0.09
    total = tax + price
    total
  end

end