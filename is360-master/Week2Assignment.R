##Week 2 assignment Exercises

## Question 1:
queue<-c("James","Mary","Steve","Alex","Patricia")

## Question 2:
(queue <- c(queue, "Harold"))

##Quuestion 3: If james has finished hes gone(i assume that)
(queue <- queue[-1])

##Question 4: If PATRICIA has gone in front of Steve
(queue <- queue[c(1,2,5,3,4)]) 

##Question 5: Harold left
(queue <- queue[1:5])  

##Question 6: Alex left
(queue <- queue[!(queue=="Alex")])

##Question 7: Position of Patricia 
match("Patricia",queue)

##Question 8: Count number of people
> length(queue)
[1] 5




