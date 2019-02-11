require 'bank'

describe Bank do
  it 'is initialised with a balance of 0' do
    account = Bank.new
    expect(account.balance).to eq 0
  end

  it 'balance can be topped up with a deposit' do
    account = Bank.new
    expect(account.deposit(100)).to eq 100
  end
end
