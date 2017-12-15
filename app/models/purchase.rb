class Purchase < ApplicationRecord

  belongs_to :purchaser
  belongs_to :item

  def self.total
     purchases = Purchase.all

     sum = 0

     purchases.each do |purchase|
        sum += purchase.quantity * purchase.item.price
     end

     sum
  end

end
