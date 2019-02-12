class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize
    @date = time.now.strftime('%d/%m/%Y')
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
