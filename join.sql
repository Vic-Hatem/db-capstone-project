SELECT C.CustomerID, C.Name, O.OrderID, O.TotalCost, M.Name, MI.Course, MI.Starter 
FROM Orders as O inner join Customers as C on O.Customerid=C.CustomerID 
inner join Menus as M on O.MenuID=M.MenuID 
inner join MenuContent as MC on M.MenuID=MC.MenuID 
inner join MenuItems as MI on MC.menuItemID=MI.MenuItemID
