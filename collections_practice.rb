# your code goes here
require 'pry'

def begins_with_r(tools)
  value = false
  tools.each do |tool|
    if tool.start_with?("r", "R")
      value = true
    else
      value = false
    end
  end
  value
end

def contain_a(elements)
  elements.select do |element|
    element.include?("a")
  end
end

def first_wa(elements)
  elements.find do |element|
    if element[0] == "w" && element[1] == "a"
      return element
    end
  end
end

def remove_non_strings(array)
  array.select { |element| element.class == String }
end

def count_elements(array)
  answer = []
  names_array = []
  x = 0
  while x < array.size
    hash = array[x]
    name = hash[:name]
    names_array.push(name)
    x += 1
  end
  counts = Hash.new 0
  names_array.each do |value|
    counts[value] += 1
  end
  counts.each do |names, counts|
    answer.push({:name => names, :count => counts})
  end
  answer
end

def merge_data(keys, data)
  answer = []
  name_hash = {}
  value_hash = {}
  merged_hash = {}
  keys.each do |top_level_keys|
    top_level_keys.each do |type, name|
      name = name
      name_hash = top_level_keys
      data.each do |top_level_keys|
        top_level_keys.each do |key, values|
          if name == key
            value_hash = values
            merged_hash = name_hash.merge(value_hash)
            answer << merged_hash
            name_hash = {}
            value_hash = {}
            merged_hash = {}
          end
        end
      end
    end
  end
  answer
end

def find_cool(cool)
  answer = []

  x = 0
  while x < cool.size
    cool[x].each do |key, value|
      if value == "cool"
        answer.push(cool[x])
      end
    end
    x += 1
  end
  answer
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, location_key_value|
    location_key_value.each do |location_key, location_value|
      if new_hash[location_value] == nil
        new_hash[location_value] = []
        new_hash[location_value] << school_name
      else
        new_hash[location_value] << school_name
      end
    end
  end
  new_hash
end
