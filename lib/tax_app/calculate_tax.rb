class CalculateTax
  attr_accessor :transactions, :year, :quarter

  def initialize(transactions, year, quarter)
    self.transactions = transactions
    self.year = year
    self.quarter = quarter
  end
=begin
  def tax 
    sum = 0  
    transactions.each do |transaction|
              sum += transaction.amount if transaction.amount > 0 && transaction.date_time.year == year && (1..3).include?(transaction.date_time.month)
      
    end     
    pp sum * 0.05      
  end

end
=end
  def quarter_moths
    return (1..12) if quarter == 0
    3.times.map {|month| month + (quarter - 1) * 3 + 1}      
  end

  def tax 
      sum = 0  
      transactions.each do |transaction|
       if transaction.amount > 0 && transaction.date_time.year == year && quarter_moths.include?(transaction.date_time.month)
          sum += transaction.amount 
        end
      end
      pp sum * 0.05
  end
end