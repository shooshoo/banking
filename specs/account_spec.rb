require 'rspec'
require '../lib/account.rb'

describe Account do

  it "should initially have a balance of zero" do
      account=Account.new
      account.balance.should==0.0
  end

  it "should have a balance equal to the starting balance" do
    starting_balance=100.00
    subject=Account.new(starting_balance)
    subject.balance.should==starting_balance
  end

  it "should add the deposit value to the balance" do
    subject=Account.new
    subject.balance.should==0.0
    subject.deposit(100.0)
    subject.balance.should==100.0
  end
   it "should decrease the balance by the amount of withdrawal"  do
   subject=Account.new(100.0)
    subject.balance.should==100.0
    subject.withdrawal(100.0)
    subject.balance.should==0.0
   end

  #it "should check that the balance is not less than zero" do
  #  subject=Account.new
  #  subject.balance.should==0.0
  #  subject.deposit(-10.0).should raise_error
  #
  #
  #end
end