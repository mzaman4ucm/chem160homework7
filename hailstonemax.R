
seqlen<- c()
boop<-c()
seqmax<-c()
for (i in 1:1000) {
n<-i
counter<-1
	while (n != 1) {
		boop[counter]<-c(n)
  		if (n%%2==0) {
    		n<-as.integer(n/2)	
		  } else {
		n<-as.integer(3*n+1)
  		}
		
	counter <- counter + 1
				
	}
	cat("complete \n")
	seqlen[i]<-c(counter)
	seqmax[i]<-c(max(boop))
	}

png("seqlen.png")
plot(seqlen)
dev.off()

png("seqmax.png")
plot(seqmax)
dev.off()
