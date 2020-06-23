require 'pry'

def find_item_by_name_in_collection(name, collection)
  item= 0
  while item < collection.length do
    return collection[item] if collection[item][:item] ===name
    item += 1
  end
end


def consolidate_cart(cart)
  index = 0
    new_cart = []

    while index < cart.length do
      item = find_item_by_name_in_collection(cart[index][:item], new_cart)
      if item
        new_cart_index = 0
        while new_cart_index < new_cart.length do
          if new_cart[new_cart_index][:item] === item[:item]
            new_cart[new_cart_index][:count] += 1
          end
          new_cart_index += 1
        end
      else
        cart[index][:count] = 1
        new_cart << cart[index]
      end
      index += 1
    end
    new_cart
end
