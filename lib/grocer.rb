def find_item_by_name_in_collection(name, collection)
  collection.find do |element|
    if element[:item] == name
      return element
    end
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.map do |element|
    if new_cart.include?(element) == false
      new_cart.push(element)
      element[:count] = 1
    else
      element[:count] += 1
    end
  end
  new_cart
end


  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
