# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
ikea = {:chair => 25, :table => 85, :mattress => 450}
def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_value_key = nil

#using a loop to grab the last value of the hash to have something I can compare it to
  name_hash.each do |key, value|
    lowest_value = name_hash[key]
  end

  name_hash.each do |key, value|
    if name_hash[key] <= lowest_value
      lowest_value = name_hash[key]
      lowest_value_key = name_hash.key(value)
    end
  end
  lowest_value_key
end

key_for_min_value(ikea)
