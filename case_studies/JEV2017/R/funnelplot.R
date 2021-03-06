funnelplot<- function(d,title="Target Match",xlimit=c(-110,110),
                      ylimit=c(0,0.045)){
  ggplot(d, aes(x=Effect, y=1/SE^2)) + 
  geom_point(size=2, shape=21,colour="black", fill="red")+
    geom_vline(xintercept=mean(d$Effect)) + 
    ylab("precision (1/SE^2)")+
    xlab("reading time (ms)")  + ggtitle(title)+
  theme_bw()+scale_fill_grey(start = 0, end = .9)+
    coord_cartesian(ylim = ylimit,xlim=xlimit)
}

