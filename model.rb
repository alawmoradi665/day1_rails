# This is the Model that contains code that deals with the data. The data is the drinks.
class BarModel
    def initialize
# The drinks inside a hash
        @drink_amounts = {
            gintonic: 0,
            coke: 0,
            beer: 0,
        }
        restock(gintonic: 20, coke: 20, beer: 20)
    end
# To change the stock (the data) so if these drinks == 0 they will be restocked with 20 beacuse the methos restock says so
    def restock(gintonic:0, coke:0, beer:0)
        @drink_amounts[:gintonic] += gintonic if gintonic > 0
        @drink_amounts[:coke] += coke if coke > 0
        @drink_amounts[:beer] += beer if beer > 0
    end 

#get a drink
    def get_drink(drink)
        if @drink_amounts[drink] > 0 
                return drink
        end
    end

    def get_available_drink
        drinks = []
        @drink_amounts.each do |drink, amount|
            if amount > 0
                drinks.push(drink)
            end 
        end 
    end 
end 
