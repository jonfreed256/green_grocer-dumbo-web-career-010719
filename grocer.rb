require.pry
def consolidate_cart(cart)
	binding.pry
	# consolidated_cart = {}
	# cart.each do |item_hashes|
	# 	binding.pry
 # 		# [{"AVOCADO" => {:price => 3.0, :clearance => true }}]
	#   	item_hashes.each do |item, info_hash|
	#   		# {"AVOCADO" => {:price => 3.0, :clearance => true }}
	#   		if consolidated_cart[item] == nil
	#   		 	consolidated_cart[item] = {}
	#   		end
	#   		item.each_with_object(Hash.new(0)) { |items, counts| consolidated_cart[items][info_hash][:counts][counts] += 1 }
	#   		# consolidated_cart[item][:count] = 
	#   	end
	# end
 #  consolidated_cart
 #  # returns {"AVOCADO" => {:price => 3.0, :clearance => true, :count => 2}}
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)		# calculate total cost of a cart of items and apply discounts and coupons as necessary
  # code here
end
