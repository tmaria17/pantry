require 'pry'
require './lib/recipe'

class Pantry
  attr_reader :stock,
              :shopping_list,
              :cookbook

  def initialize
  @stock = Hash.new(0)
  @shopping_list = Hash.new(0)
  @cookbook = [ ]
  end

  def stock_check(key)
    @stock.find do |key,value|
      key
    end
  return @stock[key]
  end

  def restock(item, number)
    @stock[item] += number
  end

  def add_to_shopping_list(recipe)
    @shopping_list.merge!(recipe.ingredients){ |key, v1, v2| v1 + v2}
    #@shopping_list = recipe.ingredients.clone
  end
  #def print_shopping_list
    #puts "* Cheese: 25\n* Flour: 20\n* Spaghetti Noodles: 10\n* Marinara Sauce: 10"
    # To do: you need to go over shopping list and add stars and line breaks
    # Also make sure you read through the whole Iteration
    #before moving on.
  #end


  def add_to_cookbook(recipe)
    @cookbook.push(recipe)
  end

  #def what_can_i_make
    #To Do:
    #Create a method where you iterate over stock and check for
    #the ingredients in the recipes in the cookbook
    # cookbook is array of recipes
  #  @stock.include do |items|
#  end

end
