

library(ggplot2)
myplot <- function(z,str1, who=1:10) {
  matplot(t(z[who,,drop=F]), type="b", pch=15:18, col=c(1:4,6), main="Basketball Players Analysis",xlab ="Seasons",ylab=str1)
  legend("bottomleft", inset=0.005, legend=Players[who], col=c(1:10), pch=15:18, horiz=F)
}

#Part 1 - Free Throw Attempts Per Game 
myplot(Free_ThrowAttempts/Games,"Free throw Attempts per Game")

#Part 2 - Free Throw Accuracy
myplot(Free_Throws/Free_ThrowAttempts,"Free Throw Accuracy")

#Part 3 - Field Goal Accuracy
myplot(FieldGoals/FieldGoalAttempts,"Field Goal Accuracy")

#Part 3 - Player Style Patterns Excluding Free Throws
myplot((Points-Free_Throws)/FieldGoals,"Shot Preference")
