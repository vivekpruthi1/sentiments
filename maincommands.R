# we will use the qdap libraray to test the polarity
install.packages("qdap")
library(qdap)
#we will use polarity command from qdap which checks against the subjectivity lexicon
library(magrittr)
install.packages("lexicon")
library(lexicon)
# let's create a dataframe and then check the polarity and plot the polarity
talk<-data.frame(name=c("victor","seema","erika","julie","victor","seema"),remarks=c("I hate it","it is great","i won","woohoo","looks horrible","not a great one"))
polarity(talk$remarks)
polarity(talk$remarks,talk$name)
plot(polarity(talk$remarks,talk$name))
