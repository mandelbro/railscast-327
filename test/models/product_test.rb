require "minitest_helper"

describe Product do
  it "Includes name in to_param" do
    product = Product.create!(name: "Hello World")
    product.to_param.must_equal "#{product.id}-hello-world"
  end
end
