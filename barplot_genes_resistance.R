#Creación de un barplot con los porcentages de genes de resistencia a antibióticos

library(ggplot2)
data=tabla_informacion_resistencia
#View(data)

df=as.data.frame(data)
df


ggplot(data=df,aes(x=reorder(Antibiotics, +Percentage), y = Percentage,fill=Antibiotics)) + geom_bar(stat = "identity", aes(fill=Antibiotics))+coord_flip()+ ylim(c(0,100))+labs(title="Percentage of resistance genes to antibiotics",size=40,x="Antibiotics")+
theme(plot.title = element_text(size = 18))

