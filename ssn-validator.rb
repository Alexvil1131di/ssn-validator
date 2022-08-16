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


end

ssn = gets.chomp
ssnValidation(ssn)