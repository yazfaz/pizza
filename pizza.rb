module Pizza
  class Pie
    attr_accessor :toppings
    
    def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
      @toppings = toppings
     end

    def vegetarian?
      !@toppings.any? {|topping| !topping.vegetarian }
    end 

    def add_topping(new_topping)
      @toppings << new_topping
    end
  end

  class Topping
    attr_accessor :name, :vegetarian

    def initialize(name, vegetarian:false)
      @name=name
      @vegetarian=vegetarian
    end
  end
end