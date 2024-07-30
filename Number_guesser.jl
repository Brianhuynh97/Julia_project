
function play_number_guess_human()
    total_numbers = 25

    # Generate a random number within a certain range
    target_number = rand(1:total_numbers)
    guess = 0

    # While the number has not been guessed, keep prompting for guesses
    while guess != target_number
        println("Please guess a number between 1 and $total_numbers: ")
        guess = parse(Int64, readline())
        # Convert the string value input to a number

        # If we are within +/-2 of the target, give a hint
        if abs(target_number - guess) <= 2 && target_number != guess
            println("You are getting closer!")
        end
    end

    println("Nice job, you got it!")
end

play_number_guess_human()
