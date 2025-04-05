require './calculator'

RSpec.describe StringCalculator do
    let(:calc) { StringCalculator.new }

    it "return 0 for empty string" do
        expect(calc.add("")).to eq(0)
    end
end