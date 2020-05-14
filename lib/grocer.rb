def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  item_counter = 0
  while item_counter < collection.length do
    if collection[item_counter][:item] == name
      item_return = Hash.new
      item_return = collection[item_counter]
    end
    item_counter += 1
  end
  item_return
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = Array.new
  new_cart[0] = cart[0]
  new_cart[0][:count] = 1
  cart_counter = 1
  while cart_counter < cart.length do
    new_cart_counter = 0
    while new_cart_counter < new_cart.length do
      found = false
      if cart[cart_counter][:item] == new_cart[new_cart_counter][:item]
        puts cart_counter
        new_cart[new_cart_counter][:count] += 1
        found = true
      end
    new_cart_counter += 1
    end
    if found == false
      a = new_cart.length
      new_cart[a] = cart[cart_counter]
      new_cart[a][:count] = 1
    end
    cart_counter += 1
  end
  new_cart
end


  