class StringCalculator
    def add(str_input)
        return 0 if str_input.strip.empty?
        delimiters = /,|\n/

        if str_input.start_with?("//")
            initials, str_input = str_input.split("\n")
            puts "Initials: #{initials} & input: #{str_input}"
            custom_delimiters = initials[2..]
            puts "Custom delimiters: #{custom_delimiters}"
            delimiters = Regexp.new(Regexp.escape(custom_delimiters))
            puts "New delimiters: #{delimiters}"
        end

        numbers = str_input.split(delimiters).map(&:to_i)
        puts "Numbers: #{numbers}"
        numbers.sum
    end
end