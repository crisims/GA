import sys
#SECOND ANALYSIS
#read in text files and create list of lines
lines_1 = open(sys.argv[1], "r").read().split('\n')

#format lists
lines_1 = lines_1[:-5]
genes = []
for i in lines_1:
    genes.append(i.split())

#count unexpressed genes
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

for i in expressed_genes:
    i[1] = int(i[1])
    i[0], i[1] = i[1], i[0]
expressed_genes_sorted = sorted(expressed_genes, key = lambda x: int(x[0]))
print(expressed_genes_sorted)
