require 'pry'
def consolidate_cart(cart)		# returns {"AVOCADO" => {:price => 3.0, :clearance => true, :count => 2}}
	consolidated_cart = {}
	cart.each do |item_hashes|
	# [{"AVOCADO" => {:price => 3.0, :clearance => true }}]
	  	item_hashes.each do |item, item_info_hash|
  		# {"AVOCADO" => {:price => 3.0, :clearance => true }}
	  		if consolidated_cart[item] == nil
	  		 	consolidated_cart[item] = item_info_hash.merge({:count => 1})
	  		 	# item_info_hash.merge({:count => 1}) is one of {:price=>3.0, :clearance=>true, :count=>1}
	  		 else
	  		 	consolidated_cart[item][:count] += 1
	  		 	# increment :count if consolidated_cart[item] doesn't equal nil (item_info_hash.merge({:count => 1}))
	  		end
	  	end
	end
	consolidated_cart
end

def apply_coupons(cart, coupons)	# Returns: {"AVOCADO" => {:price => 3.0, :clearance => true, :count => 1}, 
							# Coupons = [{:item => "AVOCADO", :num => 2, :cost => 5.0}]
	cart.clone.each do |item, item_info_hash|
	# {"AVOCADO" => {:price => 3.0, :clearance => true, :count => 3},...}
		item_info_hash.each do |pr_cl_ct_keys, pr_cl_ct_values|
		# {:price => 3.0, :clearance => true, :count => 3}
			if cart.keys.include?(item) && cart[item][:count] == coupons[0][:num]
			cart["#{item} W/COUPON"] = item_info_hash
			# binding.pry

			end
# binding.pry
		end
	end
	cart
	binding.pry
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)		# calculate total cost of a cart of items and apply discounts and coupons as necessary
  # code here
end