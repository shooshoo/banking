class Account
  attr_reader :balance
  def initialize(starting_balance= 0.0)
    @balance=starting_balance
  end
  def deposit(amount)
    @balance+=amount
  end
  def withdrawal(amount)
    @balance-=amount
  end
  def transfer_to(account,value)
    self.withdrawal(value)
    account.deposit(value)
  end
end