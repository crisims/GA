import sys
#SECOND ANALYSIS
#Reading the files
lines_1 = open(sys.argv[1], "r").read().split('\n')

#Lists for the genes
lines_1 = lines_1[:-5]
genes = []
for i in lines_1:
    genes.append(i.split())

#Count genes
counter_unexpressed = 0
counter_expressed = 0
expressed_genes = []
for i in genes:
    if i[1] == "0":
        counter_unexpressed += 1
    else:
        counter_expressed += 1
        expressed_genes.append(i)

print("Unexpressed genes:", counter_unexpressed)
print("Expressed genes:", counter_expressed)

