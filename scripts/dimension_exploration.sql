/*  
    =======================================================
    Dimension Exploration: Identifying Unique Categories
    =======================================================

    Script Purpose:
        These queries help you analyze and validate dimension tables.
        Use them to explore unique values, categories, or hierarchies 
        across different dimensions.

    -------------------------------------------------------
    Exploration Steps:
    -------------------------------------------------------
    1. Explore Distinct Values:
        - Identify unique entries in a specific dimension column
        - Useful for data validation and understanding reference values

    2. Explore Hierarchical Categories:
        - Identify major divisions within a dimension
        - Explore parent-child structures like category ? subcategory ? product
        - Apply ORDER BY to organize results for easier review
*/

/* =======================================================
   Step 1: Explore All Countries (Customer Dimension)
   ======================================================= */
SELECT DISTINCT country 
FROM gold.dim_customers;


/* =======================================================
   Step 2: Explore Product Categories and Hierarchy
   ======================================================= */
SELECT DISTINCT category, subcategory, product_name 
FROM gold.dim_products 
ORDER BY 1, 2, 3;
