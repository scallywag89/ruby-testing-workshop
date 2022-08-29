require_relative '../app'

describe ("#number?") do
  it('returns true if string is a number') do
    expect(number?(2)).to eq true
    expect(number?("hello")).to eq false
  end
end

describe ("even?") do
  it('returns true if number is even') do
    expect(even?(2)).to eq true
    expect(even?(3)).to eq false
  end
end

describe ("prime?") do
  it('returns true if number is prime') do
    expect(prime?(2)).to eq true
    expect(prime?(12)).to eq false
  end
end

describe ("palindrome?") do
  it("returns true if string is a palindrome") do
    expect(palindrome?("racecar")).to eq true
    expect(palindrome?("castle")).to eq false
  end

end

describe ("#weekend?") do
  it('should return true if today is a weekend') do
    allow(Time).to receive(:now).and_return(Time.new(2022, 8, 28))
    expect(weekend?).to be true
  end

  it('should return false if today is a Monday') do
    allow(Time).to receive(:now).and_return(Time.new(2022, 8, 29))
    expect(weekend?).to be false
  end
end

describe ("#weekday?") do
  it('should return false if today is a weekend') do
    allow(Time).to receive(:now).and_return(Time.new(2022, 8, 28))
    expect(weekday?).to be false
  end

  it('should return true if today is a Monday') do
    allow(Time).to receive(:now).and_return(Time.new(2022, 8, 29))
    expect(weekday?).to be true
  end
end
