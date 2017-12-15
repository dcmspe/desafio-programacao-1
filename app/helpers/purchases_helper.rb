module PurchasesHelper

  def populate_database(data)

    purchaser = Purchaser.new(name: data[0])
    purchaser.save()

    merchant = Merchant.new(name: data[5], address: data[4])
    merchant.save()

    item = Item.new(description: data[1], price: data[2],
                    merchant: merchant)
    item.save

    purchase = Purchase.new(quantity: data[3],
                            item: item, purchaser: purchaser)
    purchase.save

  end

end
