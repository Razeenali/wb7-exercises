# -------------------------------------------- #
# 1) Query to list the most expensive products #
# -------------------------------------------- #

SELECT ProductName, UnitPrice
FROM northwind.products 
WHERE UnitPrice = (SELECT MAX(UnitPrice)
						FROM northwind.products);

#----------------------------------

# --------------------------------------------------------------------------------------------------------- #
# 2) Query to list order id, shipping name, & shipping address all of orders shipped via "Federal Shipping" #
# --------------------------------------------------------------------------------------------------------- #

SELECT OrderID, ShipName, ShipAddress, ShipVia
FROM northwind.orders
WHERE ShipVia =  (SELECT ShipperID
					FROM northwind.shippers
					WHERE ShipperID = 3); # WHERE CompanyName like '%FEDERAL SHIPPING%')
                    
#----------------------------------
                    
# ----------------------------------------------------------------- #
# 3) Query to list order id all orders that ordered "Sasquatch Ale" #
# ----------------------------------------------------------------- #

SELECT OrderID, ProductID
FROM northwind.`order details`
WHERE ProductID = (SELECT ProductID
					FROM northwind.products
                    WHERE ProductName like '%Sasquatch Ale%'); # "Sasquatch Ale" = ProductID = 34
                    
#----------------------------------

# ----------------------------------------------------------- #
# 4) Query to list name of the employee that sold order 10266 #
# ----------------------------------------------------------- #

SELECT concat(LastName, ' ', FirstName) as Name
FROM northwind.employees
WHERE EmployeeID = (SELECT EmployeeID
					FROM northwind.orders
                    WHERE OrderID = 10266);
                    
#----------------------------------

# ------------------------------------------------------------- #
# 4) Query to list name of the customer that bought order 10266 #
# ------------------------------------------------------------- #

SELECT ContactName
FROM northwind.customers
WHERE CustomerID = (SELECT CustomerID
					FROM northwind.orders
                    WHERE OrderID = 10266);
                    
#----------------------------------
