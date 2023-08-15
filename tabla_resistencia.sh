#!/bin/bash

cut -f 2 "blastn_Muestra01_barcode04_racon4.fasta.txt"> "columna_genes.txt"

contador_aminoglycoside=0      
contador_betalactam=0
contador_colistin=0
contador_fosfomicin=0
contador_fusicicacid=0
contador_glycopeptide=0
contador_macrolides=0
contador_misc=0
contador_nitroimidazol=0
contador_oxazolidinone=0
contador_phenicol=0
contador_pseudoaminoacid=0
contador_quinolone=0
contador_rifampicin=0
contador_sulphonamide=0
contador_tetracycline=0
contador_trimethoprim=0

for i in $(cat columna_genes.txt); do
	
    # Aminoglycoside
    if [[ $i == a* ]];then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    elif [[ $i == Gar* ]]; then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    elif [[ $i == grd* ]]; then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    elif [[ $i == kmr* ]];then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    elif [[ $i == rmt* ]];then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    elif [[ $i == str* ]];then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
        elif [[ $i == npm* ]];then
        contador_aminoglycoside=$(( contador_aminoglycoside + 1 ))
    # Betalactam
    elif [[ $i == bla* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    elif [[ $i == mec* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    elif [[ $i == pen* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    elif [[ $i == imi* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    elif [[ $i == cph* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    elif [[ $i == cfx* ]]; then
        contador_betalactam=$(( contador_betalactam + 1 ))
    # Colistin
    elif [[ $i == mcr* ]]; then
        contador_colistin=$(( contador_colistin + 1 ))
    # Fosfomicin
    elif [[ $i == fo* ]]; then
        contador_fosfomicin=$(( contador_fosfomicin + 1 ))
    # Fusiciacid
    elif [[ $i == fus* ]]; then
        contador_fusicicacid=$(( contador_fusicicacid + 1 ))
    # Glycopeptide
    elif [[ $i == Van* ]]; then
        contador_glycopeptide=$(( contador_glycopeptide + 1 ))
    elif [[ $i == bleO* ]]; then
        contador_glycopeptide=$(( contador_glycopeptide + 1 ))
    elif [[ $i == van* ]]; then
        contador_glycopeptide=$(( contador_glycopeptide + 1 ))
      elif [[ $i == dld* ]]; then
        contador_glycopeptide=$(( contador_glycopeptide + 1 ))
    #Macrolides
    elif [[ $i == er* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == ms* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == car* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == lm* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == ole* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == sr* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == tlr* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == lsa* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == vga* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == vgb* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == lnu* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == vat* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == mph* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))    
    elif [[ $i == mef* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == sal* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == tva* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == mdt* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == mre* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    elif [[ $i == cmr_1* ]]; then
        contador_macrolides=$(( contador_macrolides + 1 ))
    #Ionoforos
    elif [[ $i == Nar* ]]; then
        contador_misc=$(( contador_misc + 1 ))
    #Nitroimidazol
    elif [[ $i == nim* ]]; then
	contador_nitroimidazol=$(( contador_nitroimidazol + 1 ))
    #Oxazolidinone
    elif [[ $i == optr* ]]; then
        contador_oxazolidinone=$(( contador_oxazolidinone + 1 ))
    elif [[ $i == poxt* ]]; then
        contador_oxazolidinone=$(( contador_oxazolidinone + 1 ))
    #Phenicol
    elif [[ $i == cat* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == cml* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == cmrA_1_Z12001 ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == cmx* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == flo* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == fex* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == pex* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == cfr* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == Est* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    elif [[ $i == Cfr* ]]; then
        contador_phenicol=$(( contador_phenicol + 1 ))
    #Pseudomonicacid
    elif [[ $i == mup* ]]; then
        contador_pseudoaminoacid=$(( contador_pseudoaminoacid + 1 ))
    #Quinolones
    elif [[ $i == qnr* ]]; then
        contador_quinolone=$(( contador_quinolone + 1 ))
    elif [[ $i == qep* ]]; then
        contador_quinolone=$(( contador_quinolone + 1 ))
    elif [[ $i == Oqx* ]]; then
        contador_quinolone=$(( contador_quinolone + 1 ))
    elif [[ $i == crp* ]]; then
        contador_quinolone=$(( contador_quinolone + 1 ))
    #Rifampicin
    elif [[ $i == ARR* ]]; then
        contador_rifampicin=$(( contador_rifampicin + 1 ))
    #Sulphonamide
    elif [[ $i == sul* ]]; then
        contador_sulphonamide=$(( contador_sulphonamide + 1 ))
    #Tetracycline
    elif [[ $i == tet* ]]; then
        contador_tetracycline=$(( contador_tetracycline + 1 ))
    elif [[ $i == otr* ]]; then
        contador_tetracycline=$(( contador_tetracycline + 1 ))
    elif [[ $i == tcr* ]]; then
        contador_tetracycline=$(( contador_tetracycline + 1 ))
    elif [[ $i == tmex* ]]; then
        contador_tetracycline=$(( contador_tetracycline + 1 ))
    elif [[ $i == TOpr* ]]; then
        contador_tetracycline=$(( contador_tetracycline + 1 ))
    #Trimethoprim
    elif [[ $i == dfr* ]]; then
	contador_trimethoprim=$(( contador_trimethoprim + 1 ))
    fi     
done


#Calculo de porcentajes
suma_total=$(( $contador_aminoglycoside + $contador_betalactam + $contador_colistin + $contador_fosfomicin + $contador_fusicicacid + $contador_glycopeptide + $contador_macrolides + $contador_misc + $contador_nitroimidazol + $contador_oxazolidinone + $contador_phenicol + $contador_pseudoaminoacid + $contador_quinolone + $contador_rifampicin + $contador_sulphonamide + $contador_tetracycline + $contador_trimethoprim ))

percentage_aminoglycoside=$( echo "scale=1; ($contador_aminoglycoside * 100) / $suma_total" | bc )
percentage_betalactam=$(echo "scale=1; ($contador_betalactam * 100) / $suma_total" | bc)
percentage_colistin=$(echo "scale=1; ($contador_colistin * 100) / $suma_total" | bc)
percentage_fosfomicin=$(echo "scale=1; ($contador_fosfomicin * 100) / $suma_total" | bc)
percentage_fusicicacid=$(echo "scale=1; ($contador_fusicicacid * 100) / $suma_total" | bc)
percentage_glycopeptide=$(echo "scale=1; ($contador_glycopeptide * 100) / $suma_total" | bc)
percentage_macrolides=$(echo "scale=1; ($contador_macrolides * 100) / $suma_total" | bc)
percentage_misc=$(echo "scale=1; ($contador_misc * 100) / $suma_total" | bc)
percentage_nitroimidazol=$(echo "scale=1; ($contador_nitroimidazol * 100) / $suma_total" | bc)
percentage_oxazolidinone=$(echo "scale=1; ($contador_oxazolidinone * 100) / $suma_total" | bc)
percentage_phenicol=$(echo "scale=1; ($contador_phenicol * 100) / $suma_total" | bc)
percentage_pseudoaminoacid=$(echo "scale=1; ($contador_pseudoaminoacid * 100) / $suma_total" | bc)
percentage_quinolone=$(echo "scale=1; ($contador_quinolone * 100) / $suma_total" | bc)
percentage_rifampicin=$(echo "scale=1; ($contador_rifampicin * 100) / $suma_total" | bc)
percentage_sulphonamide=$(echo "scale=1; ($contador_sulphonamide * 100) / $suma_total" | bc)
percentage_tetracycline=$(echo "scale=1; ($contador_tetracycline * 100) / $suma_total" | bc)
percentage_trimethoprim=$(echo "scale=1; ($contador_trimethoprim * 100) / $suma_total" | bc)



echo "El numero total de genes de resistencia a antibioticos en la muestra es: "$suma_total


rm columna_genes.txt

echo "El numero de genes de resistencia a aminoglucosidos es: "$contador_aminoglycoside "y representa el" $percentage_aminoglycoside "%"
echo "El numero de genes de resistencia a beta-lactamicos es: "$contador_betalactam "y representa el" $percentage_betalactam "%"
echo "El numero de genes de resistencia a colistina es: "$contador_colistin "y representa el" $percentage_colistin "%"
echo "El numero de genes de resistencia a fosfomicina es: "$contador_fosfomicin "y representa el" $percentage_fosfomicin "%"
echo "El numero de genes de resistencia a acido fucsidico es: "$contador_fusicicacid "y representa el" $percentage_fusicicacid "%"
echo "El numero de genes de resistencia a glicopeptidos es: "$contador_glycopeptide "y representa el" $percentage_glicopeptide "%"
echo "El numero de genes de resistencia a macrolidos es: "$contador_macrolides "y representa el" $percentage_macrolides "%"
echo "El numero de genes de resistencia a ionoforos es: "$contador_misc "y representa el" $percentage_misc "%"
echo "El numero de genes de resistencia a nitroimidazol es: "$contador_nitroimidazol "y representa el" $percentage_nitroimidazol "%"
echo "El numero de genes de resistencia a oxazolidinonas es: "$contador_oxazolidinone "y representa el" $percentage_oxazolidinone "%"
echo "El numero de genes de resistencia a fenicoles es: "$contador_phenicol "y representa el" $percentage_phenicol "%"
echo "El numero de genes de resistencia a pseudoaminoacid es: "$contador_pseudoaminoacid "y representa el" $percentage_pseudoaminocid "%"
echo "El numero de genes de resistencia a quinolonas es: "$contador_quinolone "y representa el" $percentage_quinolone "%"
echo "El numero de genes de resistencia a rifampicina es: "$contador_rifampicin "y representa el" $percentage_rifampicin "%"
echo "El numero de genes de resistencia a sulfonamidas es: "$contador_sulphonamide "y representa el" $percentage_sulphonamide "%"
echo "El numero de genes de resistencia a tetraciclinas es: "$contador_tetracycline "y representa el" $percentage_tetracycline "%"
echo "El numero de genes de resistencia a trimetropin es: "$contador_trimethoprim "y representa el" $percentage_trimethoprim "%"

#Creacion del archivo tabular

echo -e "Antibiotics\tNumber of genes\tPercentage">tabla_informacion_resistencia.txt
echo -e "Aminoglycosides\t$contador_aminoglycoside\t$percentage_aminoglycoside">>tabla_informacion_resistencia.txt
echo -e "Beta-Lactam\t$contador_betalactam\t$percentage_betalactam">>tabla_informacion_resistencia.txt
echo -e "Colistin\t$contador_colistin\t$percentage_colistin" >> tabla_informacion_resistencia.txt
echo -e "Fosfomicin\t$contador_fosfomicin\t$percentage_fosfomicin" >> tabla_informacion_resistencia.txt
echo -e "Fusicic Acid\t$contador_fusicicacid\t$percentage_fusicicacid" >> tabla_informacion_resistencia.txt
echo -e "Glycopeptides\t$contador_glycopeptide\t$percentage_glycopeptide" >> tabla_informacion_resistencia.txt
echo -e "Macrolides\t$contador_macrolides\t$percentage_macrolides" >> tabla_informacion_resistencia.txt
echo -e "Miscellaneous\t$contador_misc\t$percentage_misc" >> tabla_informacion_resistencia.txt
echo -e "Nitroimidazoles\t$contador_nitroimidazol\t$percentage_nitroimidazol" >> tabla_informacion_resistencia.txt
echo -e "Oxazolidinones\t$contador_oxazolidinone\t$percentage_oxazolidinone" >> tabla_informacion_resistencia.txt
echo -e "Phenicol\t$contador_phenicol\t$percentage_phenicol" >> tabla_informacion_resistencia.txt
echo -e "Pseudoaminoacids\t$contador_pseudoaminoacid\t$percentage_pseudoaminoacid" >> tabla_informacion_resistencia.txt
echo -e "Quinolones\t$contador_quinolone\t$percentage_quinolone" >> tabla_informacion_resistencia.txt
echo -e "Rifampicin\t$contador_rifampicin\t$percentage_rifampicin" >> tabla_informacion_resistencia.txt
echo -e "Sulfonamides\t$contador_sulphonamide\t$percentage_sulphonamide" >> tabla_informacion_resistencia.txt
echo -e "Tetracyclines\t$contador_tetracycline\t$percentage_tetracycline" >> tabla_informacion_resistencia.txt
echo -e "Trimethoprim\t$contador_trimethoprim\t$percentage_trimethoprim" >> tabla_informacion_resistencia.txt

echo "TABLA CREADA EN ARCHIVO: tabla_informacion_resistencia.txt"

#Script en lenguaje R
Rscript - <<RSCRIPT

#Creación de un barplot con los porcentajes de genes de resistencia a antibióticos

library(ggplot2)
data=data=read.delim("tabla_informacion_resistencia.txt")
#View(data)

df=as.data.frame(data)
df


grafico=ggplot(data=df,aes(x=reorder(Antibiotics, +Percentage), y = Percentage,fill=Antibiotics)) + geom_bar(stat = "identity", aes(fill=Antibiotics))+coord_flip()+ ylim(c(0,100))+labs(title="Percentage of resistance genes to antibiotics",size=40,x="Antibiotics")+
theme(plot.title = element_text(size = 18))

ggsave("Barplot_resistencia.pdf", plot=grafico,width = 10, height = 8)

RSCRIPT

echo "Barplot Antibioticos-Porcentaje de genes de resistencia creado y guardado en archivo Barplot_resistencia.pdf"

echo "**Script creado por Jesus L. Cañizares, Investigador predoctoral en CEBAS-CSIC**"
