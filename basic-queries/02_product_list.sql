# Help from Musa for Boxes #

# --------------------------------------------------------- #
# 1) name of the table that holds the items Northwind sells #
# --------------------------------------------------------- #

# Answer: products
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
      AND table_schema = 'northwind'
      AND table_name = 'products';

#----------------------------------

# --------------------------------------------------------- #
# 2) Query to list the product id, product name, unit price #
# --------------------------------------------------------- #

SELECT ProductID, ProductName, UnitPrice
FROM `northwind`.`products`;

#----------------------------------

# -------------------------------------------------------------- #
# 3) Query to list the product id, product name, unit price  ASC #
# -------------------------------------------------------------- #

SELECT ProductID, ProductName, UnitPrice
FROM `northwind`.`products`
order by UnitPrice; #you dont need ASC since thats how the table is set

#----------------------------------

# ----------------------------------------------------------------- #
# 4) Query to list the product id, product name, unit price <= 7.50 #
# ----------------------------------------------------------------- #

SELECT ProductID, ProductName, UnitPrice
FROM `northwind`.`products`
WHERE UnitPrice <= 7.50
order by UnitPrice;

#----------------------------------

# ---------------------------------------------------------------------- #
# 5) Query to list the product id, product name, UnitStock <= 100 in DES #
# ---------------------------------------------------------------------- #

SELECT ProductID, ProductName, UnitsInStock
FROM `northwind`.`products`
WHERE UnitsInStock <= 100
order by UnitsInStock desc;

#----------------------------------

# --------------------------------------------------------------------------- #
# 6) Query to list the product id, product name, UnitStock, Unit price in DES #
#    if same price, list Product name in ASC                                  #
# --------------------------------------------------------------------------- #

SELECT ProductID, ProductName, UnitsInStock, UnitPrice
FROM `northwind`.`products`
WHERE UnitsInStock <= 100
order by UnitPrice DESC, ProductName;

#----------------------------------

# -------------------------------------------------------------------------------- #
# 7) Query to list the product with no unit, >= 1 backorder. Order by product name #
# -------------------------------------------------------------------------------- #

SELECT ProductID, ProductName, UnitsOnOrder
FROM northwind.products
WHERE (UnitsInStock = 0 AND UnitsOnOrder >= 1)
order by ProductName;

#----------------------------------

# --------------------------------------------------------------------------- #
# 8) Name of the table that holds the categories of the items Noethwind sells #
# --------------------------------------------------------------------------- #

# Answer: categories
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
      AND table_schema = 'northwind'
      AND table_name = 'categories';

#----------------------------------

# ------------------------------------------------------------------------------------- #
# 9) Query to list all columns and rows of categories table. What is the id for seafood #
# ------------------------------------------------------------------------------------- #

SELECT * from northwind.categories;

# Category id of Seafood = 8

#----------------------------------

# ---------------------------------- #
# 10) Query to list all seafood sold #
# ---------------------------------- #

SELECT ProductID, ProductName, CategoryID
FROM `northwind`.`products`
WHERE CategoryID = 8;

#----------------------------------

# ---------------------------------------------------------------- #
# 11) Query to list first and last name of all Northwind employees #
# ---------------------------------------------------------------- #

SELECT Concat(LastName, ' ' , FirstName) as FullName
FROM northwind.employees;

#----------------------------------

# --------------------------------------------------------------------------- #
# 12) list all Northwind employees with "manager" in title                    #
# --------------------------------------------------------------------------- #

SELECT * 
FROM northwind.employees
WHERE Title LIKE '%Manager%';