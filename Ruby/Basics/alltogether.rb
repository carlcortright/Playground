# Using, functions, arrays, and logic

$position = [0,0]

def move_forward(steps)
    if $position[0] + steps > 10
        puts "out of bounds, aborting move"
        return
    end
    puts "Moving forward #{steps} steps"
    $position[0] += steps
end

def move_backward(steps)
    if $position[0] - steps < -10
        puts "out of bounds, aborting move"
        return
    end
    puts "Moving backward #{steps} steps"
    $position[0] -= steps
end


def move_right(steps)
    if $position[1] + steps > 10
        puts "out of bounds, aborting move"
        return
    end
    puts "Moving right #{steps} steps"
    $position[1] += steps
end

def move_left(steps)
    if $position[1] - steps < -10
        puts "out of bounds, aborting move"
        return
    end
    puts "Moving left #{steps} steps"
    $position[1] -= steps
end

def print_pos
    puts "x = #{$position[1]} y = #{$position[0]}"
end

print_pos
move_forward(4)
move_right(10)
print_pos