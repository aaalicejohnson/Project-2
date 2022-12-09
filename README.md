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
 
We concatenated our Netflix and Disney+ dataframes, and checked for duplicates using movie_id to understand if there were identical movie titles between the two streaming platforms. 
 
We saved our Netflix and Disney+ combined movie data in a .csv and began the process of analyzing our data for insights.

### Netflix Movies

![neflix](https://user-images.githubusercontent.com/112960489/206596118-c36d193d-49b7-4d6a-8ddc-d6660707d3ab.png)

### Disney Movies

![disneyplus](https://user-images.githubusercontent.com/112960489/206596138-760c2df3-1fd9-4f8e-99e4-73e52c794b05.png)

### Final List

![allmovies](https://user-images.githubusercontent.com/112960489/206596135-ab837f70-2617-4e1d-9fea-7b22b0fe4401.png)

## Data Analysis

To analyze the ratings of movies by platform, we standardized ratings listed by following the [MPAA rating system](http://motionpictures.org/film-ratings/) created by the Motion Picture Association of America and the National Association of Theatre Owners (G, PG, PG-13, R). We renamed values within the dataframe to reflect the respective level of parental guidance and age restricted content. After standardizing the ratings across Netflix and Disney+ movies, we used the pandas groupby function to retrieve the count of ratings by streaming platform.

We also transformed our data to reflect the number of movies per streaming platform by release year. 

## Data Findings

There were **434** duplicates amongst the movie titles pulled in our merged Netflix and Disney+ dataset. The relatively low number of duplicates is representative of today’s media landscape which features a large variety of streaming platforms, all pushing proprietary content as their unique value proposition. 

Our total movie dataset included **7,180** movies. **85%** of the movies extracted from the data were available to stream on Netflix, versus **15%** available to stream on Disney+. On Netflix, we found that **47%** of all movies were rated R (Restricted). Movies rated R were followed by **31%** of movies rated PG-13 (Parents Strongly Cautioned). In comparison, Disney+ movies were split at **46%** rated G (General Audiences) and **44%** rated PG (Parental Guidance Suggested). A small percentage of the Disney+ movies analyzed (**10%**) had a rating of PG-13.

From our data, we found that Netflix had a total of **633** movies available to stream with a release year of 2019. The number of movies with a release year of 2020 had fewer titles to stream, a total of **517**. For the release year of 2021, Netflix only had a total of **277** movies available to stream.

## Database Loading and Structure

Three tables were created in pgAdmin under the “movies” database: the “all_movies” table which contains all the movies from both platforms plus the expanded information from the API calls, the “netflix” movies table, and the “disney” movies table. The primary key for each table was the movie title. After the tables were created, we formatted each csv to fit our tables by loading them into pandas dataframes and then into the database tables using pandas “to_sql” function. 

![sqldb](https://user-images.githubusercontent.com/112960489/206597415-66fe0a3e-9a08-40c5-b451-c97835363414.png)
