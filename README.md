"# exhibition-db" 
# Exhibition Database Design

This is a project where I’ve designed a database to manage exhibition-related information. The idea is to keep track of exhibitors, the products they’re showing, and the visitors who come to check things out. The database is built using **MySQL Workbench**.

## What This is About

The goal of this project was to build a database that handles the following:

- **Exhibitors**: Each exhibitor has a unique ID and details about their company and contact info. Each exhibitor gets a booth in one of several exhibition areas (like Area A, Area B, etc.).
  
- **Products**: Exhibitors can list the products they’re showcasing, with details like name, description, and product category.

- **Visitors**: Visitors can register and leave reviews for the exhibitions they attend. Reviews are pretty simple — they rate the exhibition on a 5-star scale.

- **Exhibition Areas**: The booths are set up in different areas (Area A, B, etc.), but all exhibitions are held in the same location, so no need for location info in the database.

## Files in This Repo

- **ExhibitionDatabase.mwb**: This is the MySQL Workbench model file, where all the database design lives.  
- **Other stuff**: I might add more details or files later, depending on how the project progresses.

## How to Use It

1. Open the `.mwb` file in **MySQL Workbench** to see the design.
2. You can also use Workbench to generate SQL scripts from this model if you want to set up the actual database.
3. That’s it! Feel free to make any adjustments or improvements.

## Why This Database?

The main purpose of this database is to make it easy to manage exhibitor and visitor info for exhibitions. It’s designed to track who’s presenting what and get feedback from visitors. It’s a simple, no-frills setup, but should work for basic exhibition management.

---


