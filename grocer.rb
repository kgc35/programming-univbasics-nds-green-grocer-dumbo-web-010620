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
  new_cart =[];
  i=0;

  while i< num_items do
    item_name = cart[i][:item]
    item_price = cart[i][:price]
    item_clearance = cart[i][:clearance]

  # If there's no key for this number, add the number as a key and assign it
  # a new Array for holding future snacks with that price
  sought_item = find_item_by_name_in_collection(item_name, new_cart)
  if sought_item == nil
    sought_item = {:item => item_name, :price => item_price, :clearance => item_clearance, :count => 1}
    new_cart << sought_item
  else
    sought_item[:count] += 1 ;
  end
  i+=1;
end
new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter = 0;
  while counter < coupons.length
    cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
    couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)

    if cart_item && (cart_item[:count] >= coupons[counter][:num])
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[counter][:num]
        cart_item[:count] -= coupons[:counter][:num]
      else
        cart_item_with_coupon ={
          :item => couponed_item_name,
          :price => coupons[counter][:cost] / coupons[counter][:num],
          :count => coupons[counter][:num],
          :clearance => cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[counter][:num]
      end
    end
    counter += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter = 0
  while counter < cart.length
    if cart[counter][:clearance]
      cart[counter][:price] = (cart[counter][:price] - (cart[counter][:price] * 0.2)).round(2)
    end
    counter += 1
  end
  cart
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
