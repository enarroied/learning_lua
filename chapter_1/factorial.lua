-- defines a factorial function
function fact (n)
    if n < 0 then
        return nil
    elseif n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

-- function get_valid_input()
--     print("please enter a positive integer!")

--     ::begining::
--     a = io.read("*n") -- reads a number\

--     if type(a) == 'nil'
--         then print("that wasn't a number, was it?")
--         io.read("*l") -- <-- consume the bad line
--         goto begining

--     elseif a < 0
--         then print("That wasn't a positive number, and you know it. Try again")
--         goto begining

--     elseif math.type(a) ~= 'integer'
--         then print("That wasn't a integer number, keep trying")
--         goto begining
--     end
--     return a
-- end

--  print("enter a number:")
--  a = get_valid_input()
--  print(fact(a))



 ---------

-- Helper function to show error and retry
function invalid_input(msg)
    print(msg)
    io.read("*l")        -- consume the bad line
end

function get_valid_input()
    while true do
        print("Please enter a positive integer:")

        a = io.read("*n")

        if type(a) == 'nil' then
            invalid_input("That wasn't a number! Try again.")

        elseif a < 0 then
            invalid_input("Please enter a **positive** number!")

        elseif math.type(a) ~= 'integer' then
            invalid_input("Please enter a whole number (no decimals)!")

        else
            return a
        end
    end
end

-- Main program
print("Enter a number:")
local number = get_valid_input()
print("Factorial of " .. number .. " = " .. fact(number))
