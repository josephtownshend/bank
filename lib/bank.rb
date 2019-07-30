# frozen_string_literal: true

class Bank
  attr_reader :balance, :date, :transaction_history, :header

  def initialize
    @balance = 0
    @date = '30/07/19'
    @transaction_history = []
    @header = 'date || credit || debit || balance'
  end

  def credit(amount)
    @balance += amount.to_f
    @new_transaction = []
    @new_transaction << "#{@date} || #{amount.to_f} || || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end

  def debit(amount)
    @balance -= amount.to_f
    @new_transaction = []
    @new_transaction << "#{@date} || || #{amount.to_f} || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end

  def create_statement
    @transaction_history << @header
    @transaction_history.reverse.join("\n")
  end

  def print_statement
    print create_statement
    'Statement Printed'
  end
end
