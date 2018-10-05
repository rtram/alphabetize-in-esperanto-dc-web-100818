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
    
    #convert to ASCII
    string.collect! do |n|
      converter[n] 
    end 
    
    #join array back together
    string = string.join
  end 
  
  #sort strings by ASCII
  arr = arr.sort
  
  #iterate through ASCII to convert back to e_alphabet
  arr.collect! do |string|
    string = string.split(//)

    #convert back to e_alphabet
    string.collect! do |n|

        binding.pry

    end 
    
    #join array back together
    string = string.join
  end 
end