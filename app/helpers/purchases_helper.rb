module PurchasesHelper

  def populate_database(data)
    purchaser = Purchaser.new(name: data[:purchaser_name])
    purchaser.save()

    merchant = Merchant.new(name: data[:merchant_name],
                            address: data[:merchant_address])
    merchant.save()

    item = Item.new(description: data[:item_description],
    merchant: data[:merchant_name])
    item.save

    purchase = Purchase.new(quantity: data[:purchase_count],
                            item: item, merchant: merchant)
    purchase.save

  end

end
