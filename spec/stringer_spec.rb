require "spec_helper"
RSpec.describe Stringer do

  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it 'Minify: Parameters are a string and a max length. If the given string has a greater length than the max length parameter, minify should shorten it to the max length and add a "..." to the end. If the string length is shorter than or equal to the max length, minify should return the string itself.' do 
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10) ).to eq("Hello")
  end 

  it 'Replacify: Parameters string (original string), string (word to be replaced), string ( the replacement). Iterates over a string and replaces each instance of that word with the replacement provided.' do 
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq( "I can do this")
  end 

  it 'Tokenize: Parameters string. Iterates over a string and adds each word into an array, then returns that array.' do 
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end 

  it 'Removify: Parameters string (original), string (word to remove). Remove each instance of the second parameter within the original string.' do
    expect(Stringer.removify("I'm not a developer", "not")).to eq( "I'm a developer")
  end 

end