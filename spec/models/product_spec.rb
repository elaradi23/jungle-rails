require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'product has to be valid' do
      @category = Category.create(name:"Electronics")
      product = Product.new(
        name: "Time Machine",
        price: 1000,
        quantity: 10,
        category_id: @category.id
      )
      expect(product).to (be_valid)
    end

    it 'name should be valid' do
      @category = Category.create(name: "Electronics")
      name = Product.new(
        name: nil,
        price: 1000,
        quantity: 10,
        category_id: @category.id
        )
      expect(name).to_not(be_valid)
    end

    it 'price has to be valid' do
      @category = Category.create(name:"Electronics")
      product = Product.new(
        name: "Time Machine",
        price: nil,
        quantity: 10,
        category_id: @category.id
      )
      expect(product).to_not(be_valid)
    end

    it 'quantity has to be valid' do
      @category = Category.create(name:"Electronics")
      product = Product.new(
        name: "Time Machine",
        price: 1000,
        quantity: nil,
        category_id: @category.id
      )
      expect(product).to_not(be_valid)
    end

    it 'category has to be valid' do
      @category = Category.create(name:"Electronics")
      product = Product.new(
        name: "Time Machine",
        price: 1000,
        quantity: 10,
        category_id: nil
      )
      expect(product).to_not(be_valid)
    end
  end
end
