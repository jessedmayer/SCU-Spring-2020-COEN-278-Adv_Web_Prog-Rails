class AddOrderToLineitems < ActiveRecord::Migration[6.0]
  def change
    #add_reference :lineitems, :order, null: false, foreign_key: true
    add_reference :lineitems, :order, foreign_key: true
  end
end
