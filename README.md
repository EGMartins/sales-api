# Sales API

This is a simple API that serve some sales history to an web interface.

Some app specification:

* Ruby version: 2.5.1

* Rails version: 5.2.2

* Database: Mysql

## API endpoints

**POST _auth/login_** - Let the user sign in. This call returns the JWT token to be used on the next requests;

**POST _signup_** - Creates a new user. This call returns the JWT token to be used on the next requests;


**GET _/sales_** - Return all the items on the Sales table, using pagination, presenting 50 transactions per page;

**GET _this_year_sales_** - Return the ex tax value of the sales on the current year, grouped by month;

**GET _two_years_sales_** - Return the the Gross Profit of the year, compating the last two years;

