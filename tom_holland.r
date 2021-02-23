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
  rotten_tomatoes = c(81, 66, 91, 91, 86, 92, 85, 94, 90, 61, 75, 14, 88, 43),
  box_office = c(19, 0.06, 1.4, 408.1, 8.6, 334.2, 665, 2798, 1132, 12.3, 171.6, 249.7, 135.5, 23.06),
  Accent = c("British", "British", "British", "American", "British", "American", 
             "American", "American", "American", "British", "American", "British", "American", "American")
)

ggplot(data=holland, mapping = aes(rotten_tomatoes, box_office, color=Accent)) + 
  geom_point() +
    scale_colour_manual(values=c("blue", "red"))
