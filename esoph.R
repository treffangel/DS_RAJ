library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggcorrplot)



df = read.csv('https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/datasets/esoph.csv', na.string='.',stringsAsFactors=FALSE)
summary(df)



#Nach Alter gruppieren, Zahl der Fälle anzeigen lassen
d1<- esoph %>%  group_by(agegp) %>%
  summarise(count = n(), total_cases = sum(ncases))

ggplot(d1, aes(x=d1$agegp, y=d1$total_cases,fill=d1$agegp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Altersgruppen', y= 'Zahl der Krebsfälle')+
  guides(fill=guide_legend(title="Altersgruppen"))

#Gruppieren nach Alter und Tabakkonsum
d2<- esoph %>%  group_by(agegp,tobgp) %>%
  summarise(count = n(), total_cases = sum(ncases))


ggplot(d2, aes(x=d2$agegp, y=d2$total_cases,fill=d2$tobgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Altersgruppen', y= 'Zahl der Krebsfälle')+
  guides(fill=guide_legend(title="Tabakkonsum nach Altersgruppen"))

print("Die Grafik zeigt, dass Tabakkonsum vor allem in den unteren und mittleren Altersgruppen einen Zusammenhang mit Speiseröhrenkrebs aufweisen könnte.")


#Gruppieren nach Alkohol und Alter
d3<- esoph %>%  group_by(agegp,alcgp) %>%
  summarise(count = n(), total_cases = sum(ncases))


ggplot(d3, aes(x=d3$agegp, y=d3$total_cases,fill=d3$alcgp)) +
  geom_bar(stat="identity", position = "dodge") +
  scale_fill_brewer(palette ="Set1")+
  labs(x= 'Altersgruppen', y= 'Zahl der Krebsfälle')+
  guides(fill=guide_legend(title="Alkoholkonsum pro Altersgruppe"))

print("Die Grafik zeigt, dass in allen Altersgruppen mit höherem Alkoholkonsum auch ein höheres Risiko für Speiseröhrenkrebs einhergeht.")

# Title     : TODO
# Objective : TODO
# Created by: Angie
# Created on: 17.05.2021

