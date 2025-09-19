# E-commerce Shopping Platform Database Design Document

By Goga Cristian Maximilian

Database Schema: DBSchema.png

## Scope

Purpose
This database is designed to support a comprehensive e-commerce platform that manages the complete customer journey from product browsing to order fulfillment and payment processing. The system handles customer accounts, product catalog management, shopping cart functionality, order processing, payment transactions, shipping logistics, and customer feedback mechanisms.

What's Included
The database encompasses:

Customers: Client registration, authentication, and contact information;
Products: Complete product catalog with categorization, pricing, and inventory management;
Orders: Full order lifecycle from creation to completion;
Payments: Multiple payment methods including cards, bank transfers, and transaction tracking;
Shipping: Transport logistics with delivery addresses and scheduling;
Customer Interaction: Product ratings, reviews, wishlists, and shopping carts;
Financial Records: Invoice generation and payment reconciliation.

What's Outside the Scope
The following elements are not covered by this database:

Employee management and internal operations;
Supplier and vendor relationships;
Marketing campaigns and promotional activities;
Website analytics and user behavior tracking;
Customer service ticketing systems;
Return and refund processing workflows;
Tax calculations and compliance reporting.

## Functional Requirements

What Users Can Do
With this database, users should be able to:

Account Management: Register accounts, update personal information, and manage authentication;
Product Discovery: Browse products by category, search by criteria, and view detailed product information;
Shopping Experience: Add items to cart, create wishlists, and manage quantities;
Order Management: Place orders, track completion status, and view order history;
Payment Processing: Process payments through multiple methods and generate invoices;
Shipping Management: Specify delivery addresses and track transport details;
Community Features: Rate products, write reviews, and view other customer feedback;
Analytics: Generate reports on sales, inventory, customer behavior, and financial performance.

What's Beyond the Scope
The database is not designed to handle:

Real-time inventory synchronization with external systems;
Complex promotional pricing and discount calculations;
Multi-language and multi-currency support;
Advanced recommendation algorithms;
Social media integration;
Live chat and customer support features;
Automated marketing email campaigns.

## Representation

### Entities

Client

Represents registered customers of the e-commerce platform;
Attributes: client_id (INTEGER, PRIMARY KEY), Last_name (TEXT), First_name (TEXT), Email (TEXT), Password (TEXT), Address (TEXT), Phone_number (TEXT);
Uses INTEGER for the primary key to ensure efficient indexing and referencing;
TEXT data type chosen for flexibility in storing names and addresses of varying lengths;
Email serves as a unique identifier for authentication purposes.

Category

Represents product categorization for organizational purposes;
Attributes: category_id (INTEGER, PRIMARY KEY), Category_name (TEXT);
Simple structure to support hierarchical product organization;
INTEGER primary key for efficient joins with Product table.

Product

Central entity representing items available for purchase
Attributes: product_id (INTEGER, PRIMARY KEY), category_id (INTEGER, FOREIGN KEY), Stock (INTEGER), Price (REAL), SKU(TEXT), Description (TEXT);
REAL data type for price to handle decimal values accurately;
INTEGER for stock to maintain precise inventory counts;
SKU (Stock Keeping Unit) as TEXT to support alphanumeric product codes.

Orders

Represents customer purchase transactions;
Attributes: order_id (INTEGER, PRIMARY KEY), client_id (INTEGER, FOREIGN KEY), Completion_date (TEXT), Total_price (REAL)
TEXT for dates to provide flexibility in date format storage;
REAL for monetary values to handle currency precision.

Order_Items

Junction entity linking orders to specific products with quantities;
Attributes: order_items_id (INTEGER, PRIMARY KEY), order_id (INTEGER, FOREIGN KEY), product_id (INTEGER, FOREIGN KEY), Price (REAL), Quantity (INTEGER);
Stores price at time of purchase to maintain historical accuracy;
Separates order-level and item-level information for normalization.

Invoice

Represents billing documents for orders;
Attributes: invoice_id (INTEGER, PRIMARY KEY), client_id (INTEGER, FOREIGN KEY), issue_date (TEXT), registration_number (TEXT), invoice_number (TEXT);
Supports business requirements for formal billing documentation;
Links to client for billing address and contact information.

Payment

Handles payment transaction details;
Attributes: payment_id (INTEGER, PRIMARY KEY), invoice_id (INTEGER, FOREIGN KEY), Payment_date (TEXT), Amount (REAL), IBAN (TEXT), Account_number (TEXT), Card_number (TEXT), Transaction_code (TEXT), Card_type (TEXT), Receipt_number (TEXT);
Supports multiple payment methods (cards, bank transfers);
Comprehensive tracking for financial reconciliation.

Transport

Manages shipping and delivery information;
Attributes: transport_id (INTEGER, PRIMARY KEY), client_id (INTEGER, FOREIGN KEY), Transport_date (TEXT), Address (TEXT), City (TEXT), Country (TEXT), Postal_code (TEXT);
Separate from client address to support multiple delivery locations;
Detailed address breakdown for shipping logistics.

Rating and Comment

Support customer feedback and product reviews;
Rating: Numerical scoring system with date tracking;
Comment: Text-based reviews with publication dates;
Both link to clients and products for relationship management.

Cart and Wishlist

Temporary storage entities for customer shopping behavior;
Support quantity management and product selection;
Enable persistent shopping sessions.

### Relationships

The database implements a comprehensive relationship structure:
One-to-Many Relationships:

Client → Orders (one customer can have multiple orders)
Client → Invoices (one customer can have multiple invoices)
Client → Transport (one customer can have multiple delivery addresses)
Client → Ratings (one customer can rate multiple products)
Client → Comments (one customer can comment on multiple products)
Client → Cart items (one customer can have multiple cart items)
Client → Wishlist items (one customer can have multiple wishlist items)
Category → Products (one category can contain multiple products)
Product → Order_Items (one product can appear in multiple orders)
Product → Ratings (one product can receive multiple ratings)
Product → Comments (one product can receive multiple comments)
Orders → Order_Items (one order can contain multiple items)
Invoice → Payments (one invoice can have multiple payments)

Many-to-Many Relationships (resolved through junction tables):

Clients ↔ Products (through Cart, Wishlist, Rating, Comment)
Orders ↔ Products (through Order_Items)

## Optimizations

Current Implementation
Indexes (7 total):
The database implements a comprehensive indexing strategy to optimize query performance:

idx_client_email - Accelerates client authentication and email-based lookups;
idx_product_category - Optimizes category-based product filtering and joins;
idx_order_client_date - Composite index for efficient client order history queries with date filtering;
idx_rating_product_value - Speeds up product rating calculations and aggregations;
idx_invoice_client_date - Optimizes invoice retrieval by client and date range;
idx_payment_date - Enhances payment history queries and financial reporting;
idx_product_sku - Provides fast product lookups by SKU for inventory management.

Views (5 total):
The system includes sophisticated views that aggregate complex business metrics:

CustomerSummary - Comprehensive customer overview including order count, total spending, wishlist, and cart metrics;
ProductPerformance - Complete product analytics with ratings, sales volume, and revenue tracking;
OrderDetails - Unified order view combining customer, payment, invoice, and shipping information;
High_Spending_Clients - Advanced customer segmentation with VIP levels, purchase patterns, and customer status classification;
Inventory_After_Orders - Intelligent inventory management with stock alerts, turnover analysis, and automated reorder suggestions.


Future Enhancement Opportunities
Advanced Database Extensions for Clothing Store Integration:
Product Variant Management System:
To properly support a clothing store, the database would benefit from additional tables to handle product variants:

Product_Variants table to manage size, color, material combinations
Attribute_Types table for standardizing variant categories (Size: S/M/L/XL, Color: Red/Blue/Green)
Product_Images table to support multiple product photos per variant
Size_Charts table to provide accurate fitting information

Enhanced Customer Intelligence:

Customer_Segments table to categorize customers based on purchasing behavior
Customer_Preferences table to track style preferences, preferred brands, and size history
Browsing_History table to monitor product views and session behavior
Seasonal_Preferences table to track purchasing patterns across different seasons

Advanced Analytics and Machine Learning Integration:
Predictive Analytics Framework:
Rather than generating static reports through complex SQL queries, the system could integrate machine learning algorithms to:

Demand Forecasting: Predict inventory needs based on historical sales, seasonal trends, and fashion cycles
Customer Lifetime Value Prediction: Estimate future customer worth using purchasing patterns and engagement metrics
Churn Prediction: Identify customers likely to stop purchasing and trigger retention campaigns
Personalized Recommendations: Generate product suggestions using collaborative filtering and content-based algorithms

Real-time Business Intelligence:

Implement data streaming for real-time inventory updates and sales monitoring
Develop predictive models that analyze competitor pricing and market trends from external APIs
Create dynamic pricing algorithms that adjust based on demand, seasonality, and inventory levels

AI-Powered Customer Experience:
Intelligent Chatbot Integration:

Chatbot_Sessions table to store conversation history and context
Customer_Inquiries table to categorize and route customer questions
Product_FAQ table with AI-generated responses based on product specifications
Integration with natural language processing to understand customer style preferences and provide personalized assistance

Smart Search and Discovery:

Visual search capabilities allowing customers to upload images and find similar products
AI-powered style matching that considers body type, occasion, and personal preferences
Semantic search that understands fashion terminology and style descriptors

Advanced Personalization Engine:
Behavioral Analytics Tables:

User_Sessions for tracking detailed browsing patterns
Product_Affinities to store learned customer-product relationships
Style_Profiles to maintain individual customer fashion preferences
Purchase_Triggers to identify what motivates individual customers to buy

Dynamic Content Management:

AI-generated product descriptions optimized for different customer segments
Automated email marketing with personalized product recommendations
Dynamic website layouts that adapt to individual customer preferences

Supply Chain Intelligence:
Predictive Inventory Management:

Machine learning models that predict optimal stock levels across different seasons
Integration with fashion trend APIs to anticipate upcoming style demands
Automated reordering systems based on predictive analytics

Market Analysis Integration:

Connect with external fashion industry data sources
Analyze competitor pricing and inventory strategies
Predict market trends using social media sentiment analysis and fashion week data

Performance Optimization Through Intelligence:
Instead of running resource-intensive aggregate queries for reporting, the enhanced system would:

Pre-calculate metrics using machine learning pipelines
Cache frequently accessed insights in specialized analytics tables
Use event-driven architecture to update business intelligence in real-time
Implement automated A/B testing frameworks to optimize user experience

This evolution transforms the database from a transactional system into an intelligent platform that not only stores data but actively generates insights, predictions, and personalized experiences that drive business growth and customer satisfaction.

## Limitations

Design Limitations
Data Type Constraints:

Date fields stored as TEXT lack built-in date validation and sorting optimization
No constraint validation for email format or phone number patterns
Password storage appears to be plain text, lacking security hashing
No currency or decimal precision constraints on monetary fields

Business Logic Limitations:

No mechanism to handle product variants (size, color, etc.)
Limited support for promotional pricing or discounts
No inventory reservation system for pending orders
No support for partial payments or payment plans
No built-in mechanism for handling returns or refunds

Scalability Concerns:

No partitioning strategy for large transaction volumes
No archival mechanism for historical data
Limited support for multiple warehouses or distribution centers
No caching strategy for frequently accessed product information

Data Integrity Limitations:

No cascading delete rules defined for referential integrity
No check constraints for logical data validation (e.g., positive prices, valid rating ranges)
No uniqueness constraints on business-critical fields (e.g., SKU, email)
No mechanism to prevent overselling when stock reaches zero

Representation Limitations
What the Database Cannot Represent Well:

Complex Product Hierarchies: No support for product variants, bundles, or configurable products
Dynamic Pricing: No mechanism for time-based pricing, bulk discounts, or promotional offers
Multi-Location Inventory: Cannot handle products stored across multiple warehouses
International Operations: No support for multiple currencies, languages, or tax jurisdictions
Advanced Customer Segmentation: Limited customer classification and loyalty program support
Supply Chain Management: No representation of suppliers, purchase orders, or inventory replenishment
Customer Service Integration: No support for support tickets, communication history, or issue resolution tracking
