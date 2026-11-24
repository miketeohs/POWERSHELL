# to calculate the memory on board
(systeminfo | Select-String 'Total Physical Memory:').ToString().Split(':')[1].Trim()
