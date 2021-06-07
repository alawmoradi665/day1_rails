# Controller calls out the method that is defined in the view
# Keep controller skinny, it should mainly call the methods already defined in view and model. Controller connects the two and wants as minimal code as possible

require_relative "model.rb"
require_relative "view.rb"

class BarController
    def initialize
        # Create an instance using .new
        @model = BarModel.new
        @view = BarView.new
    end 

    def run
        greet_customer_and_take_selection
    end 

    def greet_customer_and_take_selection
        #this is picking up the method greeting from the file view.rb
        @view.greeting
        #before reading the menu, check available drinks in the method get_available_drink from the file model.rb
        drinks = @model.get_available_drink
        @view.read_menu(drinks)
        #get the name of the drink they ordered from the method order in the file view.rb
        drink_name = @view.order 
        #next step it to get the drink they ordered from model.rb in method get_drink. Passing the name of the drink they ordered through (drink_name)
        @model.get_drink(drink_name)
        #end message including the name of the drink they ordered
        @view.goodbye(drinks)
    end 
end 

controller = BarController.new
controller.run