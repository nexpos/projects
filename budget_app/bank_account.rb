class BankAccount
  def initialize(transaction)
    @transaction = transaction
  end

  def filter_todays_transactions
    transactions = []
    @transaction.each do |transaction|
      if transaction.purchase_date == Date.today
        transactions.push(transaction)
      end
    end
    transactions
  end


  def total_spent_today
    total = 0
    @transaction.each do |transaction|
      if transaction.purchase_date == Date.today
        total += transaction.amount
      end
    end
    total
  end
end
