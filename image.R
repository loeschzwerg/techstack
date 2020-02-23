library(tidyverse)
# custom font import
library(extrafont)
loadfonts(device = "win")

labels <- c("Python", "Linux", "Clojure", "C", "Java", "git", "HTML / CSS / ES6", "R") 
confidence <- c(10,   10,      7,         6,   6,      5,     5,                  4)
df. <- data.frame(labels, confidence)
df <- df.[order(df.$confidence), ]
chart <- ggplot(aes(x="",y=confidence), data=df) +
  geom_col(fill="#282828", color='#fe8019') +
  geom_text(aes(label=labels),
            position=position_stack(vjust=0.5),
            color="#fbf1c7",
            # size=7,
            family="Source Code Pro") +
  labs(x=NULL, y=NULL) +
  theme_void()

chart
ggsave("techstack.png",
       plot=chart,
       bg='transparent',
       width = 2, height = 4)


