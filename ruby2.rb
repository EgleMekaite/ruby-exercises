puts "Please enter your status:"
while status = gets.chomp

    if status == "M"
        puts "You are married."
        puts "Please enter your salary:"
        salary = gets.chomp.to_i
        if salary <= 18000
            puts "Your tax rate is 10%"
        elsif salary <= 75000
            puts "Your tax rate is 15%"
        elsif salary > 75000
            puts "Your tax rate is 25% and greater"
        end
        break
    elsif status == "S"
        puts "You are single."
        puts "Please enter your salary:"
        salary = gets.chomp.to_i
        if salary <= 9500
            puts "Your tax rate is 10%"
        elsif salary <= 38000
            puts "Your tax rate is 15%"
        elsif salary > 38000
            puts "Your tax rate is 25% and greater"
        end
        break
    else
        puts "This is not a valid status. \nPlease enter 'M' for married or 'S' for single."
    end
end