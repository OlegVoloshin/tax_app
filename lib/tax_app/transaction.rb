require 'date'

class Transaction
  attr_accessor :date_time, :description, :amount

  def initialize(date_time, description, amount)
    self.date_time = date_time
    self.description = description
    self.amount = amount    
  end
end
