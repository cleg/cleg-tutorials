#!/usr/bin/env ruby -wKU

# this part shows class attributes access modifiers

class Account 
  attr_accessor :balance 
  def initialize(balance)
    @balance = balance 
  end
  def to_s
    "Balance = #{@balance}"
  end
end 

class Transaction
  def initialize(account_a, account_b) 
    @account_a = account_a 
    @account_b = account_b
  end 
private
  def debit(account, amount) 
    account.balance -= amount
  end 
  def credit(account, amount)
    account.balance += amount 
  end
public
  def transfer(amount) 
    debit(@account_a, amount) 
    credit(@account_b, amount)
  end
end 

savings = Account.new(100) 
checking = Account.new(200) 
trans = Transaction.new(checking, savings) 
trans.transfer(50)
puts "Savings: #{savings}"
puts "Checking: #{checking}"

# alternate syntax
# class Transaction
#   private :debit, :credit
#   public :transfer
# .....
