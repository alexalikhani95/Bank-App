require 'bank'

describe Bank do
  it 'is initialised with a balance of 0' do
    account = Bank.new
    expect(account.balance).to eq 0
  end
end
