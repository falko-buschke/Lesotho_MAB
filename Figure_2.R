png(filename="Fig2.png",width=32,height=16,units="cm",res=300)
layout(mat = matrix(c(1,1,2,3),nrow=2, byrow=T),heights = c(0.4,0.6))
par(mai=c(.7,1.8,0.5,0.1))

##################
#    Panel A     #
7#################

plot(0,0,type="n", xlab="Percentage of participants with positive views", main="Question 1: Perceptions towards the National Park", ylab="",
  xlim=c(-70,70), ylim=c(1,10), yaxt="n", cex.axis=1.1,cex.lab=1.3, mgp=c(2.4,0.6,0),las=1, cex.main=1.3)

  polygon(c(-12.5,-12.5,12.5,12.5),c(2,6,6,2), border="white", lwd=2,col="grey")
  polygon(c(-37.5,-37.5,-12.5,-12.5),c(2,6,6,2), border="white", lwd=2,col=rgb(1,0.3,0.3,1))
  polygon(c(-37.5,-37.5,-38,-38),c(2,6,6,2), border="white", lwd=2,col=rgb(.6,0,0,1))
  polygon(c(12.5,12.5,54.5,54.5),c(2,6,6,2), border="white",lwd=2, col=rgb(.4,.4,1,1))
  polygon(c(54.5,54.5,62.5,62.5),c(2,6,6,2), border="white", lwd=2,col=rgb(0,0,0.6,1))
  abline(v=0, lty=2)

legend(-40,9.5,horiz=T, pch=15, col=c(rgb(0.6,0,0,1),rgb(1,0.3,0.3,1),"grey",rgb(0.4,0.4,1,1),rgb(0,0,0.6,1)),pt.cex=1.5,
  legend=c("Very negative", "Negative", "Neutral", "Positive","Very positive"), bg="white", cex=1.1)

mtext("(a)",cex=2, side = 3, adj = -0.05, line =1)

##################
#    Panel B     #
##################

labsQ2 <- c("Illegal grazing","Wildfires","Expanding human\nsettlements",
"Vandalism","Harvesting &\nPoaching")

Q2 <- c(52,46,42,24,16)
freQ2 <- c(6,2,4,0,0)

plt <- barplot(rev(Q2),horiz=T, main= "Question 2: Sources of conflict from communities",
  xlab="Ranking score", xlim=c(0,60), cex.axis=1.1,cex.lab=1.3, mgp=c(2.4,0.6,0),las=1,
  col=rgb(0.5,0,0.5,1), border=F, cex.main=1.3)
text(Q2[-5],rev(plt[-1]),paste("Ranked first:",freQ2[-5], "times"),col="white", cex=1.05, pos=2)
text(Q2[5],rev(plt[1]),paste("Ranked first:\n",freQ2[5], "times"),col="white", cex=1.05, pos=2)
box()
axis(2, at=rev(plt),labsQ2, las=1, cex.axis=1.1)
mtext("(b)",cex=2, side = 3, adj = -0.2, line =1)

##################
#    Panel B     #
##################

labsQ3 <- c("Unfair distribution\nof benefits",
"Excluding communities\nfrom initiatives",
"Livestock predation",
"Crop damage",
"Restricted movement")

Q3 <- c(56,52,28,24,20)
freQ3 <- c(8,4,0,0,0)

plt <- barplot(rev(Q3),horiz=T, main= "Question 3: Sources of conflict from protected area",
  xlab="Ranking score", xlim=c(0,60), cex.axis=1.1,cex.lab=1.3, mgp=c(2.4,0.6,0),las=1,
  col=rgb(1,0.5,0,1), border=F, cex.main=1.3)
text(Q3,rev(plt),paste("Ranked first:",freQ3, "times"),col="white", cex=1.05, pos=2)
box()
axis(2, at=rev(plt),labsQ3, las=1, cex.axis=1.1)
mtext("(c)",cex=2, side = 3, adj = -0.2, line =1)
  
dev.off()
