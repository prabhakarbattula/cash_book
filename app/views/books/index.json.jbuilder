json.array!(@books) do |book|
  json.extract! book, :id, :date, :debit, :credit, :amount
  json.url book_url(book, format: :json)
end
