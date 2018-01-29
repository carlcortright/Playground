# simple variables

chocolates = 10 # I like chocolate

def eat(chocolates)
    chocolates = chocolates - 1
    return chocolates
end

while chocolates > 0
    puts chocolates
    chocolates = eat(chocolates)
end