require "pry"

def alphabetize(arr)
  # split esperanto alphabet
  e_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz_".split(//)
  ascii = "ABabcdefghijklmnopqrstuvwxyz_".split(//)
  converter = {}
  counter = 0
  
  #iterate through e_alphabet and make a hash with e_alphabet as keys and ASCII as values
  while counter < e_alphabet.length
    converter[e_alphabet[counter]] = ascii[counter]
    counter += 1 
  end 
  
  #iterate through given array to replace e_alphabet with ASCII
  arr.collect! do |string|
    string = string.tr(" ", "_")
    string = string.split(//)
    
    string.collect! do |n|
      converter[n] 
    end 
    
    string.join
  end 
      binding.pry
  
  #sort strings by ASCII
  
  
  #iterate through ASCII to convert back to e_alphabet

end