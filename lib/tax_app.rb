require 'csv'
require_relative 'tax_app/calculate_tax'
require_relative 'tax_app/load_transaction'
require_relative 'tax_app/transaction'

lt = LoadTransactions.new
transactions = lt.perform

ct = CalculateTax.new(transactions, 2019, 0)
ct.tax
