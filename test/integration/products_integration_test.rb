require "minitest_helper"

describe "Products integration" do
  it "shows product's name" do
    product = Product.create!(name: "Tufu")
    visit product_path(product)
    page.text.must_include "Tufu"
  end
end
