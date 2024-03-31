CREATE VIEW `OrdersView` AS
select Orderid as OrderID,Quantity,TotalCost as Cost
from Orders
where Quantity >2