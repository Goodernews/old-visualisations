library(tidyverse)
library(ggrepel)


# Initially made in September 2020 when I was learning R.
# Data was hand scrapped from Rotten Tomatoes, Wikipedia, and IMDB


holland <- data.frame(
  movie = c("The Impossible", 
            "How I Live Now",
            "Locke", 
            "Captain America: Civil War",
            "The Lost City of Z",
            "Spider-Man: Homecoming",
            "Avengers: Infinity War",
            "Avengers: Endgame",
            "Spider-Man: Far From Home",
            "The Current War: Director's Cut",
            "Spies in Disguise",
            "Dolittle",
            "Onward",
            "In the Heart of the Sea"),
  rotten_tomatoes = c(0.81, 0.66, 0.91, 0.91, 0.86, 0.92, 0.85, 0.94, 0.90, 0.61, 0.75, 0.14, 0.88, 0.43),
  box_office = c(19, 0.06, 1.4, 408.1, 8.6, 334.2, 665, 2798, 1132, 12.3, 171.6, 249.7, 135.5, 23.06),
  Accent = c("British", "British", "British", "American", "British", "American", 
             "American", "American", "American", "British", "American", "British", "American", "American")
)

ggplot(data=holland, mapping = aes(rotten_tomatoes, box_office, color=Accent)) + 
  geom_point() +
  geom_text_repel(aes(label = movie), size = 4) +
  xlab("Rotten Tomato Score") +
  ylab("Box Office (Millions)")+
  ggtitle("Tom Holland's Accent")+
  scale_colour_manual(values=c("blue", "red")) +
  scale_x_continuous(labels = scales::percent)
