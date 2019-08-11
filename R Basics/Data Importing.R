#1) Importing data from CSV file
datacsv1=read.csv(file.choose(),header=T)
datacsv1
View(datacsv1)
datacsv2=read.csv(file="D:/Current_Employee_Names__Salaries__and_Position_Titles.csv",header=T)
datacsv3=read.table(file.choose(),header=T,sep=",")

#2) Importing data from Text file
datatxt1=read.delim(file.choose(),header=T)

datatxt3=read.table(file.choose(),header=T,sep="\t")

#3)Clipboard
read.table("clipboard",header=T)
#4) Writing data into another file
write.csv(datacsv2,"path")