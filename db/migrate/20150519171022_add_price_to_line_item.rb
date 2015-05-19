class AddPriceToLineItem < ActiveRecord::Migration
    def self.up
    	add_column :line_items, :price, :decimal
    	LineItem.reset_column_information

    	LineItem.all.each do |item|
    		item.update_attribute :price, item.product.price
    	end
    end

    def self.down
    	remove_column :line_items, :price
    end
end
