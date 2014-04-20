Book.create!([
  {date: "2014-04-19", amount: "75.0", debit_id: 1, credit_id: 2},
  {date: "2014-04-19", amount: "25.0", debit_id: 1, credit_id: 3},
  {date: "2014-04-19", amount: "5000.0", debit_id: 4, credit_id: 1},
  {date: "2014-04-19", amount: "2.75", debit_id: 1, credit_id: 3},
  {date: "2014-04-19", amount: "16.0", debit_id: 1, credit_id: 5},
  {date: "2014-04-19", amount: "2500.0", debit_id: 1, credit_id: 6},
  {date: "2014-04-19", amount: "150.0", debit_id: 1, credit_id: 2},
  {date: "2014-04-19", amount: "750.0", debit_id: 1, credit_id: 2},
  {date: "2014-04-19", amount: "1000.0", debit_id: 1, credit_id: 4},
  {date: "2014-04-19", amount: "500.0", debit_id: 1, credit_id: 4},
  {date: "2014-04-19", amount: "4000.0", debit_id: 4, credit_id: 1},
  {date: "2014-04-19", amount: "150.0", debit_id: 1, credit_id: 3},
  {date: "2014-04-20", amount: "5.5", debit_id: 1, credit_id: 3},
  {date: "2014-04-20", amount: "5.75", debit_id: 1, credit_id: 5}
])
Ledger.create!([
  {name: "CASH", opening_balance: "10000.0"},
  {name: "PETROL", opening_balance: "0.0"},
  {name: "STATIONERY", opening_balance: "0.0"},
  {name: "HDFCBANK", opening_balance: "50000.0"},
  {name: "POOJA", opening_balance: "0.0"},
  {name: "ROC FEE", opening_balance: "0.0"}
])
