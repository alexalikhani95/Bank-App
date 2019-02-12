require 'bank'

describe Bank do
  it 'is initialised with a balance of 0' do
    account = Bank.new
    expect(account.balance).to eq 0
  end

  it 'balance can be topped up with a deposit' do
    account = Bank.new
    account.deposit(100)
    expect(account.balance).to eq 100
  end

  it 'money can be withdrawn from account, with balance deducted by amount withdrawn' do
    account = Bank.new
    account.deposit(100)
    account.withdraw(90)
    expect(account.balance).to eq 10
  end

  it 'deposit added should show up as debit' do
    account = Bank.new
    account.deposit(100)
    expect(account.debit).to eq [100]
  end
end
