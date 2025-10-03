# SQL Exploratory Data Analysis  

The main goal is to demonstrate how SQL can be used to **filter, search, and explore datasets** to gain insights when dealing with new, current, or existing projects.  

This project focuses on understanding the data by breaking it down into different exploration steps.  

---

## 🔎 Project Objectives
- Develop a structured approach for SQL-based data exploration.  
- Build intuition for understanding data scope, structure, and content.  
- Create reusable SQL queries for future analysis.  

---

## 🛠️ Steps in Project

### 1. Database Exploration
- Explore the database schema to build a foundational understanding.  
- Review tables, views, and columns.  

### 2. Dimension Exploration
- Identify **unique values or categories** in each dimension.  
- Syntax Example:  
  ```sql
  SELECT DISTINCT column_name FROM table_name;
  
### 3. Date Exploration
- Identify the earliest and latest dates.
- Understand the time span and scope of the dataset.

### 4. Measure Exploration
- Explore quantitative measures to understand key metrics in the dataset.

### 5. Magnitude Analysis
- Examine the scale of values within measures for better interpretation.

### 6. Ranking Exploration
- Perform Top-N / Bottom-N analysis to highlight best and worst performers.
- Example use cases: top-selling products, least performing regions, etc.
---
### 📂 Dataset
- Dataset used is the same as the one in the Data Warehouse Project.
- Contains dimensions, measures, and date-related fields suitable for EDA.
---
### 🚀 Outcomes
By following this process, the project enables:
- A systematic SQL exploration workflow.
- Better understanding of dataset structure and business context.
- Queries and techniques reusable in other projects.
