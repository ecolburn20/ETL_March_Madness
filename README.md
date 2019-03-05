# ETL_March_Madness

## Extract

We found a data set on kaggle that contained stats on college basketball teams and every game they have played. We found another data set
that continaed every game played in the NCAA basketball tournament. We imported both data sets into python to transform.

## Transform

Using the first data set that contained the stats of college basketball teams in the games they played, we removed all games played before
the 2012-2013 season because not all of the teams in the data set included games before that. We did the same thing for the other data set,
so that they would be consistent. This was tricky for the first data set, because the basketball seasons start in one year and finish in
another. So we had to take out the data that occurred during the beginning of 2012, but keep the data that occurred at the end of 2012. To
do this we used a for loop to loop through all the data points, and then an if statement to determine if the data occurred at the beginning
of the year or the end of the year, and then assigned the "season year" the game took place in. For exmaple, a game played on December 1st,
2012 would be considered the 2013 season, and a game played on January 1st, 2012 would be considered the 2012 season. This helped keep
consistency with the other data set as well.

We also realized that our data set with the games played contained data of the NCAA tournament. However, we did not want this data in that
data set because we wanted it to just contain the regular season data. All games played in the NCAA tournament are played on "Neutral"
courts. So we took out all data that had "Neutral" in the site column.

After that we were ready to load the data to a database.

## Load

We loaded both data sets to a database in MySQL. We decided to use MySQL because the data was very structured so it would be easy to query
for future analysis. It will also be easy to add to it as more games are played.

We also scraped the web to find ESPNs projections on who would make the NCAA Tournament this year. We wanted to store this data in MongoDB
so that we could see the differences each time the projections were updated. The data contains the date of when the projections were 
pulled to keep track of how the projections can change over time. Having this data stored could help with future analysis to
determine who will make future tournaments and to see if there are any patterns in the projections compared to who ultimately makes the
tournament.

## Analysis
For the analysis, we drew a relationship between team performance in the regular season and tournament performance. Unfortunately, we didn't see as much of a relationship as we would have liked, at least for the 5 teams tested: Duke, UVA, Gonzaga, Michigan, North Carolina.