# ------------------------------- #
# 1) Query to count the suppliers #
# ------------------------------- #

SELECT COUNT(SupplierId) as TotalSuppliers
FROM northwind.suppliers;

#----------------------------------

# ---------------------------------------- #
# 2) Query for sum of all employees salary #
# ---------------------------------------- #

SELECT SUM(Salary) as TotalSalary
FROM northwind.employees;

#----------------------------------

# ----------------------------------------------- #
# 3) Query for cheapest item that Northwind sells #
# ----------------------------------------------- #

SELECT MIN(UnitPrice) as CheapestPrice
FROM northwind.products;

#----------------------------------

# -------------------------------------------------------- #
# 4) Query for average price of items that Northwind sells #
# -------------------------------------------------------- #

SELECT AVG(UnitPrice) as avgUnitPrice
FROM northwind.products;

#----------------------------------

# ------------------------------------------------ #
# 5) Query for expensive item that Northwind sells #
# ------------------------------------------------ #

SELECT MAX(UnitPrice) as Price
FROM northwind.products;

#----------------------------------

# ------------------------------------------------------------ #
# 6) Query for supplier ID and the number of items they supply #
# ------------------------------------------------------------ #

SELECT SupplierID, COUNT(*) as ItemSupplied
FROM northwind.products
group by SupplierID;

#----------------------------------

# --------------------------------------------------------------------------- #
# 7) Query for Category ID and the average price of each item in the category #
# --------------------------------------------------------------------------- #

SELECT CategoryID, AVG(UnitPrice) as AvgPrice
FROM northwind.products
group by CategoryID;

#----------------------------------

# ------------------------------------------------------------------------------------------------- #
# 8) Query for suppliers who provide atleast 5 items, Get supplier ID and number of supplied items  #
# ------------------------------------------------------------------------------------------------- #

SELECT SupplierID, COUNT(SupplierID) as ItemSupplied
FROM northwind.products
group by SupplierID
 HAVING COUNT(SupplierID) >= 5;
 
 #----------------------------------
 
# ---------------------------------------------------------------------------------------------- #
# 9) Query for listing product id, product name, and inventory value, DESC order, if same value  #
#    order by product name                                                                       #
# ---------------------------------------------------------------------------------------------- #

SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) as InventoryValue
FROM northwind.products
order by InventoryValue DESC, ProductName;

 #----------------------------------