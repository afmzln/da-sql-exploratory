 /*  
    =======================================================
    Database Exploration: Getting Familiar with the Database
    =======================================================

    Script Purpose:
        These queries help you understand the structure of the database.
        Use them as a starting point when exploring any new environment.

    -------------------------------------------------------
    Exploration Steps:
    -------------------------------------------------------
    1. Explore Database Objects:
        - Retrieve list of all tables and views
        - Key attributes returned:
            * TABLE_CATALOG  : Database Name
            * TABLE_SCHEMA   : Schema Name
            * TABLE_NAME     : Table or View Name
            * TABLE_TYPE     : Object type (BASE TABLE or VIEW)

    2. Explore Table Columns:
        - Retrieve metadata for columns in tables/views
        - Useful for understanding column names, data types, and constraints
        - You can filter by TABLE_NAME for specific objects
*/

/* =======================================================
   Step 1: Explore All Tables and Views in the Database
   ======================================================= */
SELECT * 
FROM INFORMATION_SCHEMA.TABLES;


/* =======================================================
   Step 2: Explore Columns of a Specific Table
   ======================================================= */
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'  -- Replace with the table you want
