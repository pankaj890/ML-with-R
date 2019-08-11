#CREATING BAR CHARTS IN R

mtcars$gear

# Vertical bars
counts <- table(mtcars$gear)
counts
barplot(counts)

#horizontal bar chart
barplot(counts, horiz=TRUE)

#other options
counts <- table(mtcars$gear)
barplot(counts,
        main="Simple Bar Plot",
        xlab="Improvement",
        ylab="Frequency",
        legend=rownames(counts),
        col=c("red", "yellow", "green")
)


#stacked bar plot with colors and legends
counts <- table(mtcars$vs,
                mtcars$gear)
barplot(counts,
        main="Car Distribution by Gears
and VS",
        xlab="Number of Gears",
        ylab="Frequency",
        col=c("grey","cornflowerblue"),
        legend = rownames(counts))
)




#Grouped bar plot
counts <- table(mtcars$vs,
                mtcars$gear)
barplot(counts,
        main="Car Distribution by
        Gears and VS",
        xlab="Number of Gears",
        col=c("grey","cornflowerblue"
        ),
        legend = rownames(counts),
        beside=TRUE       #Only difference between Stacked and Grouped
)




