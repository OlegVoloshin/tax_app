require 'date'
class LoadTransactions

  def perform
    CSV.foreach("data.csv", headers: :first_row).map do |row| 
      Transaction.new(DateTime.parse(row['date_time']), row['description'], row['amount'].to_f)
    end
  end
end
