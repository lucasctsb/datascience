# Question: Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

# Databases is "billboard_top_100_year_end" and it has the columns "year", "year_rank", "group_name", "artist", "song_name", e "id".

# Code:
  SELECT DISTINCT year_rank, group_name, song_name
  FROM billboard_top_100_year_end
  WHERE year = 2010
  ORDER BY year_rank ASC
  LIMIT 10;
  
# Output will be:
  year_rank	group_name	song_name
  1	KE$HA	TiK ToK
  2	LADY ANTEBELLUM	Need You Now
  3	TRAIN	Hey, Soul Sister
  4	KATY PERRY FEAT. SNOOP DOGG	California Gurls
  5	USHER FEAT. WILL.I.AM	OMG
  6	B.O.B FEAT. HAYLEY WILLIAMS	Airplanes
  7	EMINEM FEAT. RIHANNA	Love The Way You Lie
  8	LADY GAGA	Bad Romance
  9	TAIO CRUZ	Dynamite
  10	TAIO CRUZ FEAT. LUDACRIS	Break Your Heart
  

