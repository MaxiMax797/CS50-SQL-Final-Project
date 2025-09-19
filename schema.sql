-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

CREATE TABLE Client (
  client_id INTEGER PRIMARY KEY AUTOINCREMENT,
  Last_name TEXT,
  First_name TEXT,
  Email TEXT,
  Password TEXT,
  Address TEXT,
  Phone_number TEXT
);

CREATE TABLE Category (
  category_id INTEGER PRIMARY KEY AUTOINCREMENT,
  Category_name TEXT
);

CREATE TABLE Product (
  product_id INTEGER PRIMARY KEY AUTOINCREMENT,
  category_id INTEGER,
  Stock INTEGER,
  Price REAL,
  SKU TEXT,
  Description TEXT,
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Invoice (
  invoice_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  issue_date TEXT,
  registration_number TEXT,
  invoice_number TEXT,
  FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE Transport (
  transport_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  Transport_date TEXT,
  Address TEXT,
  City TEXT,
  Country TEXT,
  Postal_code TEXT,
  FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE Payment (
  payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
  invoice_id INTEGER,
  Payment_date TEXT,
  Amount REAL,
  IBAN TEXT,
  Account_number TEXT,
  Card_number TEXT,
  Transaction_code TEXT,
  Card_type TEXT,
  Receipt_number TEXT,
  FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id)
);

CREATE TABLE Rating (
  rating_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  product_id INTEGER,
  Value INTEGER,
  Product_rating_date TEXT,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Orders (
  order_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  Completion_date TEXT,
  Total_price REAL,
  FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

CREATE TABLE Wishlist (
  wishlist_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  product_id INTEGER,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Comment (
  comment_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  product_id INTEGER,
  Content TEXT,
  Publication_date TEXT,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Cart (
  cart_id INTEGER PRIMARY KEY AUTOINCREMENT,
  client_id INTEGER,
  product_id INTEGER,
  Quantity INTEGER,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Order_Items (
  order_items_id INTEGER PRIMARY KEY AUTOINCREMENT,
  order_id INTEGER,
  product_id INTEGER,
  Price REAL,
  Quantity INTEGER,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE INDEX idx_client_email ON Client(Email);
CREATE INDEX idx_product_category ON Product(category_id);
CREATE INDEX idx_order_client_date ON `Orders`(client_id, Completion_date);
CREATE INDEX idx_rating_product_value ON Rating(product_id, Value);
CREATE INDEX idx_invoice_client_date ON Invoice(client_id, issue_date);
CREATE INDEX idx_payment_date ON Payment(Payment_date);
CREATE INDEX idx_product_sku ON Product(SKU);

CREATE VIEW CustomerSummary AS
SELECT 
    c.client_id,
    c.First_name,
    c.Last_name,
    c.Email,
    COUNT(DISTINCT o.order_id) as Total_Orders,
    COALESCE(SUM(o.Total_price), 0) as Total_Spent,
    COUNT(DISTINCT w.product_id) as Wishlist_Items,
    COUNT(DISTINCT cart.product_id) as Cart_Items
FROM Client c
LEFT JOIN Orders o ON c.client_id = o.client_id
LEFT JOIN Wishlist w ON c.client_id = w.client_id
LEFT JOIN Cart cart ON c.client_id = cart.client_id
GROUP BY c.client_id, c.First_name, c.Last_name, c.Email;

CREATE VIEW ProductPerformance AS
SELECT 
    p.product_id,
    p.SKU,
    p.Description,
    cat.Category_name,
    p.Price,
    p.Stock,
    COALESCE(AVG(r.Value), 0) as Avg_Rating,
    COUNT(r.rating_id) as Rating_Count,
    COALESCE(SUM(oi.Quantity), 0) as Total_Sold,
    COALESCE(SUM(oi.Price * oi.Quantity), 0) as Total_Revenue
FROM Product p
JOIN Category cat ON p.category_id = cat.category_id
LEFT JOIN Rating r ON p.product_id = r.product_id
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.SKU, p.Description, cat.Category_name, p.Price, p.Stock;

CREATE VIEW OrderDetails AS
SELECT 
    o.order_id,
    c.First_name,
    c.Last_name,
    o.Completion_date,
    o.Total_price,
    i.invoice_number,
    p.Payment_date,
    p.Amount as Payment_Amount,
    p.Card_type,
    t.Transport_date,
    t.City,
    t.Country
FROM Orders o
JOIN Client c ON o.client_id = c.client_id
LEFT JOIN Invoice i ON c.client_id = i.client_id
LEFT JOIN Payment p ON i.invoice_id = p.invoice_id
LEFT JOIN Transport t ON c.client_id = t.client_id;

CREATE VIEW High_Spending_Clients AS
SELECT 
    c.client_id,
    c.First_name,
    c.Last_name,
    c.First_name || ' ' || c.Last_name as Full_Name,
    c.Email,
    c.Phone_number,
    c.Address,
    COUNT(DISTINCT o.order_id) as Total_Orders,
    SUM(o.Total_price) as Total_Spent,
    AVG(o.Total_price) as Average_Order_Value,
    MIN(o.Total_price) as Smallest_Order,
    MAX(o.Total_price) as Largest_Order,
    MIN(o.Completion_date) as First_Order_Date,
    MAX(o.Completion_date) as Last_Order_Date,
    CASE 
        WHEN MAX(o.Completion_date) >= date('now', '-30 days') THEN 'Recent Customer'
        WHEN MAX(o.Completion_date) >= date('now', '-90 days') THEN 'Returning Customer'
        ELSE 'Long-time Customer'
    END as Customer_Status,
    CASE 
        WHEN SUM(o.Total_price) >= 500 THEN 'VIP Gold'
        WHEN SUM(o.Total_price) >= 350 THEN 'VIP Silver'
        ELSE 'VIP Bronze'
    END as VIP_Level
FROM Client c
INNER JOIN `Orders` o ON c.client_id = o.client_id
GROUP BY 
    c.client_id, c.First_name, c.Last_name, c.Email, 
    c.Phone_number, c.Address
HAVING SUM(o.Total_price) > 200
ORDER BY Total_Spent DESC;

CREATE VIEW Inventory_After_Orders AS
SELECT 
    p.product_id,
    p.SKU,
    p.Description as Product_Name,
    cat.Category_name,
    p.Price,
    p.Stock as Original_Stock,
    COALESCE(SUM(oi.Quantity), 0) as Total_Units_Ordered,
    (p.Stock - COALESCE(SUM(oi.Quantity), 0)) as Current_Available_Stock,
    CASE 
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) <= 0 THEN 'OUT OF STOCK'
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) < 5 THEN 'CRITICAL - REORDER NOW'
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) < 10 THEN 'LOW STOCK'
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) < 20 THEN 'MEDIUM STOCK'
        ELSE 'ADEQUATE STOCK'
    END as Stock_Alert,
    ROUND(
        CASE 
            WHEN p.Stock > 0 THEN (CAST(COALESCE(SUM(oi.Quantity), 0) as REAL) / p.Stock) * 100 
            ELSE 0 
        END, 2
    ) as Inventory_Turnover_Percentage,
    CASE 
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) <= 5 THEN 
            CAST((COALESCE(SUM(oi.Quantity), 0) * 2) as INTEGER)
        WHEN (p.Stock - COALESCE(SUM(oi.Quantity), 0)) <= 10 THEN 
            CAST((COALESCE(SUM(oi.Quantity), 0) * 1.5) as INTEGER)
        ELSE 0
    END as Suggested_Reorder_Quantity,
    COUNT(DISTINCT oi.order_id) as Number_of_Orders_Containing_Item,
    COALESCE(SUM(oi.Quantity * oi.Price), 0) as Total_Revenue_Generated,
    MAX(o.Completion_date) as Last_Order_Date,
    CASE 
        WHEN MAX(o.Completion_date) IS NOT NULL THEN
            CAST(julianday('now') - julianday(MAX(o.Completion_date)) as INTEGER)
        ELSE NULL
    END as Days_Since_Last_Order
FROM Product p
INNER JOIN Category cat ON p.category_id = cat.category_id
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
LEFT JOIN `Orders` o ON oi.order_id = o.order_id
GROUP BY p.product_id, p.SKU, p.Description, cat.Category_name, p.Price, p.Stock
ORDER BY Current_Available_Stock ASC, Total_Revenue_Generated DESC;

