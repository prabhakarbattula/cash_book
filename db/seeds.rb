Book.create!([
  {date: "2014-04-19", debit: "1", credit: "2", amount: "75.0"},
  {date: "2014-04-19", debit: "1", credit: "3", amount: "25.0"},
  {date: "2014-04-19", debit: "4", credit: "1", amount: "5000.0"},
  {date: "2014-04-19", debit: "1", credit: "3", amount: "2.75"},
  {date: "2014-04-19", debit: "1", credit: "5", amount: "16.0"},
  {date: "2014-04-19", debit: "1", credit: "6", amount: "2500.0"},
  {date: "2014-04-19", debit: "1", credit: "2", amount: "150.0"},
  {date: "2014-04-19", debit: "1", credit: "2", amount: "750.0"},
  {date: "2014-04-19", debit: "1", credit: "4", amount: "1000.0"},
  {date: "2014-04-19", debit: "1", credit: "4", amount: "500.0"},
  {date: "2014-04-19", debit: "4", credit: "1", amount: "4000.0"},
  {date: "2014-04-19", debit: "1", credit: "3", amount: "150.0"},
  {date: "2014-04-20", debit: "1", credit: "3", amount: "5.5"}
])
Ledger.create!([
  {name: "CASH", opening_balance: "10000.0"},
  {name: "PETROL", opening_balance: "0.0"},
  {name: "STATIONERY", opening_balance: "0.0"},
  {name: "HDFCBANK", opening_balance: "50000.0"},
  {name: "POOJA", opening_balance: "0.0"},
  {name: "ROC FEE", opening_balance: "0.0"}
])
