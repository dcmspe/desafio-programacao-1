require "rails_helper"

RSpec.describe Purchase, :type => :model do
  before(:context) do
    @luke_skywalker = Purchaser.new(name: "Luke Skywalker", address: "Tatooine")
    @luke_skywalker.save

    @darth_vader = Merchant.new(name: "Darth Vader", address: "Starkiller")
    @darth_vader.save

    @lightsaber = Item.new(description: "Red Lightsaber",
                                price: 999.99,
                                merchant: @darth_vader)
    @lightsaber.save

  end

  context "test basic validations for purchases" do
    it "should make a lightsaber purchase" do
      purchase = Purchase.new(purchaser: @luke_skywalker, item: @lightsaber)
      purchase.save

      expect(purchase.item.description).to eq("Red Lightsaber")
      expect(purchase.item.price).to eq(999.99)
    end
  end
end
