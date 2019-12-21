latest:
	make r-ver rstudio tidyverse verse

r-ver: .PHONY
	make -C r-ver/ latest
rstudio: .PHONY
	make -C rstudio/ latest
tidyverse: .PHONY
	make -C tidyverse/ latest
verse: .PHONY
	make -C verse/ latest

all:
	make -C r-ver/ all
	make -C rstudio/ all
	make -C tidyverse/ all
	make -C verse/ all

.PHONY:
	echo "Building Rocker versioned images locally...\n"



devel:
	make -C r-ver/ devel
	make -C rstudio/ devel
	make -C tidyverse/ devel
	make -C verse/ devel
	

clean::
	make -C r-ver/ clean
	make -C rstudio/ clean
	make -C tidyverse/ clean
	make -C verse/ clean


