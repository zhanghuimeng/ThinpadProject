#!/bin/bash
vivado -mode batch -source ./sigasi_scripts/SigasiProjectCreator/src/convertVivadoProjectToCsv.tcl ThinpadProject.xpr
./sigasi_scripts/SigasiProjectCreator/src/convertCsvFileToTree.py ThinpadProject vivado_files.csv

