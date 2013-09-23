require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  product = Product.new
  assert product.invalid?
  assert product.errors[:name].any?
  assert product.errors[:description].any?
  assert product.errors[:price].any?
  assert product.errors[:category_ref].any?
  assert product.errors[:image_url].any?
  
  test "product price must be positive" do
  product = Product.new(name: "My Book Title",
  description: "yyy", image_url: "zzz.jpg")
  product.price = -1
  assert product.invalid?
  assert_equal ["must be greater than or equal to 0.01"],
  product.errors[:price]
  product.price = 0
  assert product.invalid?
  assert_equal ["must be greater than or equal to 0.01"],
  product.errors[:price]
  product.price = 1
  assert product.valid?
  end
  
  def new_product(image_url) 
    Product.new(name: "My Book Title",
    description: "yyy", price: 1, image_url: image_url, category_ref: 1)
  end
end
