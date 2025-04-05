class StringCalculator
    def add(str_input)
        return 0 if str_input.strip.empty?
        delimiters = /,|\n/

        if str_input.start_with?("//")
            initials, str_input = str_input.split("\n")
            custom_delimiters = initials[2..]
            delimiters = Regexp.new(Regexp.escape(custom_delimiters))
        end

        numbers = str_input.split(delimiters).map(&:to_i)
        negative_numbers = numbers.select { |n| n < 0 }
        if negative_numbers.any?
            raise "Negative numbers are not alllowed: #{negative_numbers.join(", ")}"
        end

        numbers.sum
    end
end