USE SuperMoney;
GO

BACKUP DATABASE SuperMoney
TO DISK = 'C:\Users\momo\Desktop\wild\SuperMoney.bak'
WITH FORMAT,
NAME = 'BDD_SuperMoney'



GO
BEGIN TRANSACTION
DELETE 
FROM logs
WHERE EXISTS
       (SELECT user FROM logs WHERE [user] = 'hack3r');

GO

DELETE TOP(3)
FROM logs
WHERE [message] > 5 ;

COMMIT;