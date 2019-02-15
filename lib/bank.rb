require_relative 'transaction'

class Bank
  attr_reader :balance, :account_history
  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(amount)
    @balance += amount
    @account_history << Transaction.new(amount, nil, balance)
  end

  def withdraw(amount)
    @balance -= amount
    @account_history << Transaction.new(nil, amount, balance)
  end
end
