library(palmerpenguins)
library(tidyverse)
library(titanic)
library(janitor)
library(palmerpenguins)

titanic <- titanic_train %>% 
  clean_names() %>% 
  select(survived, pclass, sex, age, fare, embarked) %>% 
  mutate(pclass = case_when(pclass == 1 ~ "First", 
                            pclass == 2 ~ "Second",
                            pclass == 3 ~ "Third"),
         embarked = case_when(embarked == "S" ~ "Southampton",
                              embarked == "C" ~ "Cherbourg",
                              embarked == "Q" ~ "Queenstown"),
         embarked = as.factor(embarked),
         sex = as.factor("sex"),
         survived = as.logical(survived))


ggplot(titanic, aes(x = pclass)) +
  geom_bar(color = "white", fill = "#41B6FF") +
  ## partially from stackoverflow https://stackoverflow.com/questions/6528180/ggplot2-plot-without-axes-legends-etc
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "none",
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_blank()) +
  theme(panel.background = element_rect(fill = "#004C80",
                                        color = "#004C80"))

ggsave("slides/week2/img/blank-bar.png")

ggplot(titanic, aes(x = age)) +
  geom_histogram(color = "white", fill = "#41B6FF") +
  ## partially from stackoverflow https://stackoverflow.com/questions/6528180/ggplot2-plot-without-axes-legends-etc
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "none",
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_blank()) +
  theme(panel.background = element_rect(fill = "#004C80",
                                        color = "#004C80"))

ggsave("slides/week2/img/blank-histogram.png")

ggplot(penguins,
       aes(x = species,
           y = bill_length_mm))  +
  geom_violin(color = "white", fill = "#41B6FF") +
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "none",
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_blank()) +
  theme(panel.background = element_rect(fill = "#004C80",
                                        color = "#004C80"))

ggsave("slides/week2/img/blank-violin.png")

ggplot(penguins,
       aes(x = bill_depth_mm,
           y = bill_length_mm,
           size = 20))  +
  geom_point(color = "#41B6FF") +
  theme(axis.line = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "none",
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_blank()) +
  theme(panel.background = element_rect(fill = "#004C80",
                                        color = "#004C80"))

ggsave("slides/week2/img/blank-point.png")

