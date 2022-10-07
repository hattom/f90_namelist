FC = gfortran


all: fort_namelist

fort_namelist: fort_namelist.o
	$(FC) -o $@ $^

fort_namelist.o: fort_namelist.F90
	$(FC) -c $^

run: fort_namelist
	-@rm input
	./fort_namelist
	-@rm input

run_namelist: fort_namelist input
	cat input
	./fort_namelist

input:
	echo "&vars" > input
	echo b=7 >> input
	echo "raa= 1. 2. 3." >> input
	echo "/" >> input

