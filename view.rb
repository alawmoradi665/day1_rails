# View: USER INTERACTION, THIS IS WHAT THEY SEE
# * Greeting
# * Reading menu
# * Ordering a drink
# * Being asked if I would like more
# * Goodbye message

class BarView
    def initialize
    end 

    def greeting
        puts "Welcome to Nands Bar!"
    end 

    # Looping through each drink and disolayin
    def read_menu(drinks)
        drinks.each do |drink|
            puts "----- #{drink} ------"
        end
    end 

    # Getting order and converting into a symbol
    def order
        puts "What drink would you like to order?"
        item = gets.chomp.to_sym
    end

    def selection
        puts "Would you like to order more?"
    end 
# passing the drink so it can tell tehm which drink they got
    def goodbye(drink)
        puts "Here is your #{drink}, see you next time"
    end 
end 