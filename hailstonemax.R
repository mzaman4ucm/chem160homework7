
seqlen<- c()

for (i in 1:1000) {
n<-i
counter<-1
seqmax<- c()
maxval<-n
	while (n != 1) {
  		if (n%%2==0) {
    		n<-as.integer(n/2)	
		  } else {
		n<-as.integer(3*n+1)
  		}

		counter <- counter + 1
		
		if (n>maxval) {
		maxval<-n
		}
}
	seqlen[i]<-c(counter)
	seqmax[i]<-c(maxval)

	}

png("seqlen.png")
plot(seqlen)
dev.off()

png("seqmax.png")
plot(seqmax)
dev.off()
