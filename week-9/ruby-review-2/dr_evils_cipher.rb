# Cipher Challenge

# I worked on this challenge with David Valencia.
# I spent [1.5] hours on this challenge.

# 1. Initial Solution:
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message) #defining the method which takes a coded message as its arugment
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
  
# #this is a empty array for the eventual reconstructed sentence and then below is a hash that reads input and gives it the correct coressponding letter
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? #each is iterating over each element (x = letter) in the array "input"
#     found_match = false # Why would this be assigned to false from the outset? What happens when it's true?  It's false and then it's iterating through to make it true and then returning it.
#     cipher.each_key do |y| # What is #each_key doing here? #each_key is iterating over each key (letter in input message = y) in the hash "cipher"
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? The two iterations are being compared aginst each other for a match
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Because it's a infitie loop
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?  It's making a space out of these characters.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?  This pushes a number into the message.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? This is a catch all to push everything else.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? and then it joins it
# end

# Refactored Solution:
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentance = []
  input.each do |x|
    if x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x == "*"
      decoded_sentance << " "
    elsif x =~ /[[:punct:]]/
      decoded_sentance << x
    elsif x.kind_of?(Integer)
      decoded_sentance << x
    elsif x == "a"
      decoded_sentance << "w"
    elsif x == "b"
      decoded_sentance << "x"
    elsif x == "c"
      decoded_sentance << "y"
    elsif x == "d"
      decoded_sentance << "z"
    else
      decoded_sentance << (x.ord - 4).chr
    end
  end
  p decoded_sentance.join
end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection:
# What concepts did you review in this challenge?
# This challenge was a great review of how to properly refactor code that is very repetitive and at times difficult to follow.

# What is still confusing to you about Ruby?
# One topic, outside of what was covered here, that I'm still a bit uncertain about is attributes (i.e. - attr_reader, attr_writer, and attr_accessor). I'm still not confident on how to implement these into my code so I definitely need to review this before starting Phase 1.

# What are you going to study to get more prepared for Phase 1?
# Again, I need to continue reviewing how to use attributes, in addition to reviewing Ruby Basics. 