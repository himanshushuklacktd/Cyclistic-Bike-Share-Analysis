# Cyclistic Bike-Share Analysis

## 📊 Project Overview

This project analyzes Cyclistic bike-share usage to understand how **casual riders** and **annual members** use the service differently.

The goal is to identify behavioral patterns and provide data-driven recommendations that can help Cyclistic convert more casual riders into annual members.

This project was completed as part of the **Google Data Analytics case study** workflow.

---

## 🎯 Business Task

Cyclistic wants to increase the number of annual memberships.

The key business question is:

> **How do annual members and casual riders use Cyclistic bikes differently, and how can these differences be used to design strategies for converting casual riders into annual members?**

---

## 🛠️ Tools Used

- **Microsoft Excel** – Data cleaning and exploratory analysis
- **Google BigQuery / SQL** – Data storage, transformation, and analysis
- **Tableau Public** – Data visualization and storytelling
- **GitHub** – Project documentation and portfolio

---

## 🔄 Project Workflow

The analysis followed the six-step data analytics process:

1. **Ask** – Define the business problem
2. **Prepare** – Collect and organize the data
3. **Process** – Clean and prepare the datasets
4. **Analyze** – Explore patterns using Excel and SQL
5. **Share** – Build visualizations and a Tableau story
6. **Act** – Develop business recommendations

---

## 🧹 Data Cleaning

The dataset covered the period:

**April 2020 – March 2021**

Data cleaning was performed in Excel, including:

- Removing invalid ride records
- Identifying negative ride durations
- Identifying zero-duration rides
- Identifying unusually long rides
- Calculating `ride_length`
- Calculating `day_of_week`
- Combining monthly datasets for analysis

---

## 📈 Key Analysis

A total of approximately **3.48 million rides** were analyzed.

### User Type

| User Type | Total Rides |
|---|---:|
| Annual Members | 2,052,189 |
| Casual Riders | 1,427,188 |

Annual members accounted for more rides overall, while casual riders showed different usage patterns.

### Average Ride Duration

| User Type | Average Ride Duration |
|---|---:|
| Casual Riders | ~41.5 minutes |
| Annual Members | ~15.9 minutes |

Casual riders consistently took **longer rides** than annual members.

### Weekly Pattern

Casual rider activity was particularly strong on **weekends**, especially Saturday.

Annual members showed a more consistent pattern throughout the week.

### Monthly Pattern

Casual rider activity was strongest during the warmer months, particularly **July and August**.

### Bike Type Usage

Docked bikes had the highest overall usage.

Casual riders also recorded substantially longer average ride durations when using docked bikes.

---

## 💡 Key Insights

- Casual riders take **longer rides** than annual members.
- Annual members make **more rides overall** but their average rides are shorter.
- Casual rider activity is particularly strong on **weekends**.
- **July–August** shows high casual rider activity.
- Docked bikes have the **highest overall usage**.

---

## 📌 Business Recommendations

Based on the analysis, Cyclistic could:

### 1. Weekend-focused Membership Promotions
Target casual riders with membership promotions during weekends when casual activity is high.

### 2. Target Long-duration Casual Riders
Casual riders taking longer trips may represent a strong opportunity for membership conversion.

### 3. Seasonal Marketing Campaigns
Increase digital marketing and membership campaigns during **July–August**, when casual rider activity is high.

### 4. Limited-time Membership Offers
Introduce limited-time membership trials, discounts, or promotional offers to encourage casual riders to become annual members.

---

## 📊 Tableau Dashboard & Story

The final analysis was visualized using Tableau Public.

### Tableau Public

[View the Interactive Tableau Story](https://public.tableau.com/app/profile/himanshu.shukla3958/viz/CyclisticBike-ShareAnalysis_17886238102980/Story1)

The Tableau Story includes:

1. Cyclistic User Overview
2. Casual vs Member Behavior
3. Monthly Rides Trend
4. Bike Type Usage
5. Weekly Pattern
6. Recommendations & Business Insights

---

## 📷 Dashboard Preview

Screenshots of the Tableau dashboard and story are included in the `05_Tableau/screenshots/` folder.

---

## 📁 Project Structure

```text
Cyclistic-Bike-Share-Analysis/
│
├── README.md
│
├── 01_Data/
│   └── README.md
│
├── 02_Excel/
│   ├── cleaning/
│   └── analysis/
│
├── 03_SQL/
│   └── cyclistic_analysis.sql
│
├── 04_Python/
│
├── 05_Tableau/
│   ├── screenshots/
│   └── tableau_link.txt
│
├── 06_Documentation/
│
├── 07_Presentation/
│
├── 08_References/
│
└── 09_Portfolio/