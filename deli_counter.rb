# Write your code here.
require 'pry'

def line(customers_array)
    if customers_array.length == 0
        puts "The line is currently empty."
    else
        line_string = "The line is currently:"
        customer_index = 0
        customers_array.each do |name|
            line_string += " #{customer_index +=1}. #{name}"
        end
        puts line_string
    end      
end


def take_a_number(customers_array, customer_name)
    customers_array << customer_name
    puts "Welcome, #{customer_name}. You are number #{customers_array.find_index(customer_name)+1} in line."
end


def now_serving(customers_array)
    if customers_array.size == 0
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{customers_array[0]}."
        customers_array.shift
    end
end
