class LoadTransaction

  def load_transaction
    arr_of_rows = CSV.read("lib/data.csv", **options)
  end
end