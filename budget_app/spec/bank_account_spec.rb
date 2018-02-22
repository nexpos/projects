require 'spec_helper'
require 'date'

describe BankAccount do
  it 'returns transactions' do
    transaction1 = double('transaction', purchase_date: Date.today)
    transaction2 = double('transaction', purchase_date: Date.today)
    transaction3 = double('transaction', purchase_date: Date.today.next_day)

    bank_account = BankAccount.new([transaction1, transaction2, transaction3])

    expect(bank_account.filter_todays_transactions).to match([transaction1, transaction2])
  end

  it 'displays todays sum only' do
    transaction1 = double('transaction', purchase_date: Date.today)
    transaction2 = double('transaction', purchase_date: Date.today)
    transaction3 = double('transaction', purchase_date: Date.today.next_day)

    allow(transaction1).to receive(:amount).and_return(25.00)
    allow(transaction2).to receive(:amount).and_return(50.00)
    allow(transaction3).to receive(:amount).and_return(100.00)

    bank_account = BankAccount.new([transaction1, transaction2, transaction3])

    expect(bank_account.total_spent_today).to eq(75)
  end
end
