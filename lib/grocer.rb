require 'pry'
def find_item_by_name_in_collection(name, collection)
  count = 0 
  collection.each do |item|
    while item[:item] == name
      return item
    end
    count += 1
  end
  nil
end

#def find_item_by_name_in_collection(name, collection)
#  counter = 0 
#  while counter < collection.length do
#    if collection[counter][:item] == name
#      return collection[counter] 
#    end
#    counter += 1 
#  end  
#end


def consolidate_cart(cart)
 counter = 0 
 new_cart = Array.new
  while counter < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      if new_cart_item
        new_cart_item[:count] += 1 
      else
        new_cart_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
         }
        new_cart << new_cart_item
      end
      counter += 1
    end  
    new_cart
end

# used video walkthrow tutural 
  