# Netflix Content Analysis – SQL + Power BI Dashboard

![Netflix logo](https://github.com/DEVDAYALWANI19/Portfolio-Projects/blob/c18fa63e3fe445da3d92e762019d968bdb57aaff/netflix%20project/BrandAssets_Logos_01-Wordmark.jpg)

## Project Overview
This project analyzes the Netflix dataset to uncover trends, patterns, and insights about its content library.  
It uses **PostgreSQL** for data analysis and **Power BI** for creating an interactive dashboard.  
The dataset was sourced from Kaggle and loaded into PostgreSQL for SQL querying, and then visualized in Power BI.

---

## Dataset Information
# The dataset was downloaded from Kaggle using the Kaggle API:

 [Netflix Movies and TV Shows Dataset](https://www.kaggle.com/shivamb/netflix-shows)

The dataset contains the following columns:
- **show_id** – Unique ID of the content  
- **type** – Movie or TV Show  
- **title** – Name of the content  
- **director** – Director(s) of the content  
- **casts** – Cast members  
- **country** – Country of origin  
- **date_added** – Date content was added to Netflix  
- **release_year** – Year of release  
- **rating** – Content rating (e.g., PG, R, TV-MA)  
- **duration** – Duration in minutes or seasons  
- **listed_in** – Genre(s)  
- **description** – Short description of the content  

---

## Tools & Technologies Used
- **SQL** (PostgreSQL) – Data cleaning, transformation, and analysis  
- **Power BI** – Interactive visualizations and dashboard  
- **Kaggle API** – Dataset download  
- **DAX** – Custom calculations in Power BI  

---

##  SQL Analysis – Key Business Questions Answered
The SQL script (`netflix.sql`) answers 15 business questions, including:
1.	Number of Movies vs TV Shows
2. Most common rating for Movies and TV Shows
3. Movies released in a specific year (e.g., 2020)
4. Top 5 countries with the most content
5. Longest movie
6. Content added in the last 5 years
7. All content by director *Rajiv Chilaka*
8. TV Shows with more than 5 seasons
9. Content count per genre
10. Average annual content releases by India (Top 5 years)
11. All documentaries
12. Content without a director
13. Movies featuring *Salman Khan* in the last 10 years
14. Top 10 actors in Indian movies
15. Categorizing content as "Good" or "Bad" based on keywords in the description

---
## Dashboard Preview

![Netflix Dashboard Screenshot](https://github.com/DEVDAYALWANI19/Portfolio-Projects/blob/760b735cbcc42a7eb7f4f2a3d9bb6eed472da133/netflix%20project/Screenshot%202025-08-14%20113657.png)
##  Power BI Dashboard Features
The Power BI dashboard visualizes key insights from the SQL queries:
- **Movies vs TV Shows Distribution**  
- **Top Countries by Content**  
- **Genre Breakdown**  
- **Content Trends Over Time**  
- **Most Common Ratings**  
- **Actor & Director Analysis**  

---

## 🚀 How to Use
1. **Run SQL Queries**  
   - Import the dataset into PostgreSQL.  
   - Execute `netflix.sql` to run the analysis.

2. **Open Power BI Dashboard**  
   - Open `netflix dashboard.pbix` in Power BI Desktop.  
   - Connect it to your PostgreSQL database or use the preloaded dataset.

---

## 💡 Key Insights
- Movies make up a larger share of Netflix content compared to TV shows.
- The USA, India, and the UK are the top content producers.
- Certain genres dominate Netflix's library, with Documentaries and Stand-Up Comedy showing unique patterns.
- A significant portion of content has no listed director.
- Keyword-based classification shows a mix of "Good" and "Bad" content.

---

##Contact
**Author:**  DEV DAYALWANI 
**GitHub:** [https://github.com/DEVDAYALWANI19]  
**Email:**  devdayalwani3@gmail.com
