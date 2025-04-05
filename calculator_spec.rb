require './calculator'

RSpec.describe StringCalculator do
    let(:calc) { StringCalculator.new }

    it "return 0 for empty string" do
        expect(calc.add("")).to eq(0)
    end

    it "returns number for single value" do
        expect(calc.add("1")).to eq(1)
    end

    it "returns sum of two numbers" do
        expect(calc.add("1,5")).to eq(6)
    end

    it "returns sum of all numbers" do
        expect(calc.add("1,2,3,4,5")).to eq(15)
    end

    it "returns sum of all numbers with new line delimiter" do
        expect(calc.add("1\n2,3")).to eq(6)
    end

    it "returns sum of number removing all delimiters" do
        expect(calc.add("//;\n1;2")).to eq(3)
    end

    it "throws exception for negative numbers" do
        expect{ calc.add("1,-2,-3") }.to raise_error("Negative numbers are not alllowed: -2, -3")
    end
end