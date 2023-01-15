lend amount balance
     | amount <= 0            = Nothing
     | amount > reverse * 0.5 = Nothing
     | otherwise              = Just newBalance
    where reverse = 100
          newBalance = balance - amount