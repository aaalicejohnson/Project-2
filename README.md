# Project-2

## Project Intro
The goal of our project is to uncover trends in movie offerings on major streaming platforms such as Netflix and Disney+. We’ll examine relationships between movie rating, genre, budget, release year, runtime and streaming platform.

## Data Sources
- [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)(csv)
- [The Movie Database](https://www.themoviedb.org/) (API)
- [Disney+ Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/disney-movies-and-tv-shows)(csv)

## Data Extraction / Transformation

We pulled csv datasets for Netflix and Disney+ from Kaggle. We read the .csv files into our jupyter notebook and filtered the dataframes to reflect only movies, excluding TV shows. We also removed columns that contained data that was irrelevant to our analysis, such as the movie description and date added. 
 
Next, we wanted to pull supplemental data on the Netflix and Disney+ movies titles we had extracted. For this step, we used TheMovieDB.com API. To begin, we created a new dataframe for the movie titles of the respective streaming platforms. We added columns for data that would be retrieved from the API such as movie budget, revenue, runtime, ID and genre.
 
We utilized a for loop to fetch the supplemental movie data from the API. Due to the large amount of data that was being processed from the API for Netflix movies, we encountered long loading times. To make it smoother, we fetched the Netflix movie data from the API and loaded it into two csv files each with roughly 3,000 records. We then concatenated the two sets of Netflix data back together into a single dataframe. We saved this new Netflix dataframe to into netflix_titles.csv.
 
After retrieving the supplemental movie data from the API specific to our Netflix and Disney+ movie titles, we merged the original dataframe from the Kaggle dataset with the dataframe from the API call for each platform. After the merging process, the dataframes had all of the data we hoped to analyze for each platform. We added the column “streaming” for both Netflix and Disney+ dataframes, listing the platform name as an identifier. We saved our dataframes in .csv format and focused next on merging the Disney+ and Netflix data.
 
We concatenated our Netflix and Disney+ dataframes, and double checked for duplicates using movie_id. We removed all movie duplicates between the two streaming platforms. 
 
We saved our Netflix and Disney+ combined movie data in a .csv and began the process of analyzing our data for insights.

### Netflix Movies

### Disney Movies

### Final List

## Data Analysis

To analyze the ratings of movies by platform, we standardized ratings listed by following the MPAA rating system created by the Motion Picture Association of America and the National Association of Theatre Owners (G, PG, PG-13, R). We renamed values within the dataframe to reflect the respective level of parental guidance and age restricted content. After standardizing the ratings across Netflix and Disney+ movies, we used the pandas groupby function to retrieve the count of ratings by streaming platform.

We also transformed our data to reflect the number of movies per streaming platform by release year. 
