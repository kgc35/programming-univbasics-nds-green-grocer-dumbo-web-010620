def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  num_items = collection.length;
  answer = nil;

  num_items.times do |index|
    if collection[index][:item] == name
      answer = collection[index]
    end
  end

  answer
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  num_items = cart.length;

  num_items.times do |index|
    item_name = cart[index][:item]
    item_price = cart[index][:price]
    item_clearance = cart[index][:clearance]
    new_cart =[];
  # If there's no key for this number, add the number as a key and assign it
  # a new Array for holding future snacks with that price
  if find_item_by_name_in_collection(item_name, new_cart) == nil
    new_cart.push({:item => item_name, :price => item_price, :clearance => item_clearance, :count => 1})
  else
    result[snack_price] += 1
  end
  i += 1
end

end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
