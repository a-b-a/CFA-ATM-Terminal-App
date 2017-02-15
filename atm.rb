#To add
#counter for for loop
#tests for both big and small W/D
#error for non amount in W/D??

#Variable for the balance of the account. the variable balance is a local variable.
#They only exists within it's scope (current block) @variable however is an
#instance variable - and is available to all methods within the class.
#Note that all instances of the variable @balance must include the @
@balance = 100
#this is used to count the number of times the question is asked.
@i = 0

#Function to withdraw an amount
def withdraw(amount)
  @balance -= amount
  puts "Your balance is now #{@balance}"
end

#Function to deposit an amount
def deposit(amount)
  @balance += amount
  puts "Your balance is now #{@balance}"
end

#loop to re do the following 10 ties (ie ask the question 10 times)
for times in 1..10
  #Asks the initial question
  puts "Would you like to Withdraw or Deposit Money? (W/D)"
  #sends a prompt for the user to fill in. Note that it also takes w/d and W/D
  answer = gets.chomp.upcase
  #If the user puts in "W", then they will withdraw funds. They will be asked
  #how much, and that amount will be deducted using the above defined withdraw method
  if answer == "W"
    puts "How much would you like to withdraw?"
    wAmount = gets.chomp.to_i
    withdraw(wAmount)
  #If the user puts in "D", then they will deposit funds. They will be asked
  #how much, and that amount will be deducted using the above defined deposit method
  elsif answer == "D"
      puts "How much would you like to deposit?"
      dAmount = gets.chomp.to_i
      deposit(dAmount)
  #If the user doe not put w/W/d/D, then an error popus up.
  else
      puts "this is not one of the methods, please try again"
  end
  #adds 1 to the counter
  @i += 1
end
#prints the counter at the end
puts @i
