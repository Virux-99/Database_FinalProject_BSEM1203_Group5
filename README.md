Project Description
The Market Stall Registration System is a database project designed to manage traders, market stalls, stall allocations, and usage records. It helps track traders, assign stalls, and monitor how stalls are used over time.

Database Structure

Traders
This table stores information about traders including personal and contact details.
Fields include Traders_ID, First_Name, Last_Name, Gender, Date_Of_Birth, Email, and Phone.

Market_Stalls
This table stores details about market stalls including their type, location, price, size, and linked trader.
Fields include Stall_ID, Market_Type, Stall_Location, Stall_Price, Stall_Size, and Traders_ID.

Stall_Allocations
This table tracks which trader is assigned to which stall, including the allocation date and venue.
Fields include Allocation_ID, Allocation_Date, Allocation_Venue, Stall_ID, and Traders_ID.

Usage_Records
This table tracks the usage duration of stalls and payment methods used by traders.
Fields include Record_ID, Usage_Date, End_Date, Usage_Duration, Payment_Method, and Allocation_ID.

Features
The system allows registration of traders, assignment of stalls, tracking of stall usage, recording of payments, and management of relationships between all entities.

Technologies Used
SQL using MySQL or MariaDB
Git and GitHub for version control

How to Use
Create the database using the provided SQL script
Run all CREATE TABLE statements
Insert sample data into the tables
Use SQL queries to manage and retrieve information

Author
This project was created for academic database submission purposes
