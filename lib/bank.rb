class Bank
  attr_reader :balance, :account_history, :debit, :credit

  def initialize
    @balance = 0
    @debit = []
    @credit = []
  end

  def deposit(amount)
    @balance += amount
    @debit.push(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @credit.push(amount)
  end
end
