require "stringer/version"

module Stringer

  def self.spacify *strings
    string = ""
    strings.each do |s|
        string += s + " "
    end
    string.rstrip
  end

  def self.minify *strings
    if strings[0].length > strings[1]
      p strings[0][0...strings[1]] + "..."
    else
      p strings[0]
    end 
  end 

  def self.replacify *strings
    # a.sub('bar', "BAR")
    p strings[0].sub(strings[1], strings[2])
  end 

  def self.tokenize strings
     strings.split(" ")
  end 

  def self.removify *strings
    new = []
    strings[0].split.each do |el|
      new << el if el != strings[1]
    end 
    p new.join(" ")
  end 

end
