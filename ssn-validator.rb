def ssnValidation(ssn)
    #def local variables 

    x=0
    ssn1=""
    ssn2=""
    ssn3=""

    #erase the allowed separator
    if ssn.include?("-") && ssn[3] == "-" && ssn[6] == "-"
        ssn = ssn.delete! "-"
    elsif ssn.include?("-") && ssn[3] != "-" && ssn[6] != "-"
        puts "Invalid input"
        return false
    end

    if ssn.length != 9 then 
        puts "Wrong number of characters"
        return false
    end

    #split and verify the alowed characters

    ssn.split('').each{
        |n|
        if n >= '0' && n <= '9' || n == '-' then
        else
            puts 'The input is not a number or a -'
            return false
        end

        # save in 3 groups the ssn sections
        if x < 3 then
            ssn1 = ssn1 + n
        elsif x > 2 && x < 5 then
            ssn2 = ssn2 + n
        elsif x > 4 && x < 9 then
            ssn3 = ssn3 + n
        end

        x = x + 1

    }

    #validate the ssn sections conditions

    if ssn1 == "000" || ssn1 == "666" || ssn1.length < 3 || ssn1 > "900" && ssn1 < "999" then
        puts "The first 3 digits of your ssn are not valid"
        return false
    end

    if ssn2 < "01" || ssn2 > "99" || ssn2.length < 2 then
        puts "The forth and fifth digits of your ssn are not valid"
        return false
    end

    if ssn3 < "0001" || ssn3 > "9999" || ssn3.length < 4 then
        puts "The last 4 digits of your ssn are not valid"
        return false
    end



end

ssn = gets.chomp
ssnValidation(ssn)