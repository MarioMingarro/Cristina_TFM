library(tidyverse)
library(readxl)
library(viridis)
data <- read_xlsx("B:/A_ROB/TFM_CRISTINA/TAO_IAP/ALL_TAO_IAP.xlsx", sheet = "32_1975_2016")

data$ZONE <- as.factor(data$ZONE)

ggplot(data, aes(x=TAO, y = IAP, col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("TAO - IAP")+
  theme_minimal()

ggplot(data, aes(x=Elevation, y = TAO, col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("TAO - ELEVATION")+
  theme_minimal()

ggplot(data, aes(x=Elevation, y = IAP, col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("IAP - ELEVATION")+
  theme_minimal()


ggplot(data, aes(x=TAO, y = IAP))+
  geom_point(aes(group=ZONE, col = ZONE))+
  geom_smooth(method="lm", se = FALSE, col = "black")+
  ggtitle("TAO - IAP")+
  theme_minimal()

ggplot(data, aes(x=Elevation, y = TAO))+
  geom_point()+
  geom_smooth( method="lm", se = FALSE, col = "black")+
  ggtitle("TAO - ELEVATION")+
  theme_minimal()

ggplot(data, aes(x=Elevation, y = IAP))+
  geom_point()+
  geom_smooth(method="lm", se = FALSE, col = "black")+
  ggtitle("IAP - ELEVATION")+
  theme_minimal()

data_change <- read_xlsx("B:/A_ROB/TFM_CRISTINA/TAO_IAP/ALL_TAO_IAP.xlsx", sheet = "20_changes")

data_change$ZONE <- as.factor(data_change$ZONE)


ggplot(data_change, aes(x=Elevation, y = TAO_CH, col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("TAO CH - ELEVATION")+
  theme_minimal()

ggplot(data_change, aes(x=Elevation, y = IAP_CH, col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("IAP CH - ELEVATION")+
  theme_minimal()

ggplot(data_change, aes(x=IAP_CH , y = TAO_CH , col = ZONE))+
  geom_point()+
  geom_smooth(aes(group=ZONE, col = ZONE), method="lm", se = FALSE)+
  ggtitle("TAO CH - IAP CH")+
  theme_minimal()


ggplot(data_change, aes(x=Elevation, y = TAO_CH))+
  geom_point(aes(group=ZONE, col = ZONE))+
  geom_smooth(method="lm", se = FALSE, col = "black")+
  ggtitle("TAO CH - ELEVATION")+
  theme_minimal()

ggplot(data_change, aes(x=Elevation, y = IAP_CH))+
  geom_point(aes(group=ZONE, col = ZONE))+
  geom_smooth(method="lm", se = FALSE, col = "black")+
  ggtitle("IAP CH - ELEVATION")+
  theme_minimal()

ggplot(data_change, aes(x=IAP_CH , y = TAO_CH))+
  geom_point(aes(group=ZONE, col = ZONE))+
  geom_smooth(method="lm", se = FALSE, col = "black")+
  ggtitle("TAO CH - IAP CH")+
  theme_minimal()
