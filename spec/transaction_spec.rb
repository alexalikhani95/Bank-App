require 'transaction'

describe Transaction do
  it 'has a correct date upon initialisation' do
    time = Time.now.strftime('%d/%m/%y')
    trans1 = Transaction.new
    expect(trans1.date).to eq time
  end

  it 'has a credit upon initialisation' do
    trans1 = Transaction.new(100, nil, 0)
    expect(trans1.credit).to eq 100
  end

  it 'has a debit upon initialisation' do
    trans1 = Transaction.new(nil, 50, 0)
    expect(trans1.debit).to eq 50
  end

  it 'has a balance upon initialisation' do
    trans1 = Transaction.new(nil, nil, 0)
    expect(trans1.balance).to eq 0
  end
end
