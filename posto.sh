#!/bin/bash

#http://terminalroot.com.br/2015/07/30-exemplos-do-comando-sed-com-regex.html


echo "Deletar"

#Limpando linhas nulas
sed -i '/^0800FFFFFFFFFFFFFFFFFFFFFFFFFF333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2-/ d' Abastecimentos.log
sed -i '/00000000000000000000000000000000/d' Abastecimentos.log
sed -i '/^0800....00/d' Abastecimentos.log


echo "Configura"
#Corrindo configuração de bicos \1[BICO][COMBUSTIVEL][TANQUE]
sed -i 's/\(^0800....\)010000/\1011802/g' Abastecimentos.log
sed -i 's/\(^0800....\)020000/\1020904/g' Abastecimentos.log
sed -i 's/\(^0800....\)030000/\1030101/g' Abastecimentos.log
sed -i 's/\(^0800....\)040000/\1041005/g' Abastecimentos.log
sed -i 's/\(^0800....\)050000/\1051005/g' Abastecimentos.log
sed -i 's/\(^0800....\)060000/\1061802/g' Abastecimentos.log
sed -i 's/\(^0800....\)070000/\1070904/g' Abastecimentos.log
sed -i 's/\(^0800....\)080000/\1080101/g' Abastecimentos.log
sed -i 's/\(^0800....\)090000/\1091005/g' Abastecimentos.log
sed -i 's/\(^0800....\)100000/\1101005/g' Abastecimentos.log
sed -i 's/\(^0800....\)110000/\1111802/g' Abastecimentos.log
sed -i 's/\(^0800....\)120000/\1120904/g' Abastecimentos.log
sed -i 's/\(^0800....\)130000/\1130101/g' Abastecimentos.log
sed -i 's/\(^0800....\)140000/\1141802/g' Abastecimentos.log
sed -i 's/\(^0800....\)150000/\1150904/g' Abastecimentos.log
sed -i 's/\(^0800....\)160000/\1160101/g' Abastecimentos.log
sed -i 's/\(^0800....\)170000/\1171802/g' Abastecimentos.log
sed -i 's/\(^0800....\)180000/\1180904/g' Abastecimentos.log
sed -i 's/\(^0800....\)190000/\1190101/g' Abastecimentos.log
sed -i 's/\(^0800....\)200000/\1201802/g' Abastecimentos.log
sed -i 's/\(^0800....\)210000/\1210904/g' Abastecimentos.log
sed -i 's/\(^0800....\)220000/\1220101/g' Abastecimentos.log
sed -i 's/\(^0800....\)230000/\1231803/g' Abastecimentos.log
sed -i 's/\(^0800....\)240000/\1240904/g' Abastecimentos.log
sed -i 's/\(^0800....\)250000/\1250101/g' Abastecimentos.log
sed -i 's/\(^0800....\)260000/\1261803/g' Abastecimentos.log
sed -i 's/\(^0800....\)270000/\1270904/g' Abastecimentos.log
sed -i 's/\(^0800....\)280000/\1280101/g' Abastecimentos.log
sed -i 's/\(^0800....\)290000/\1291803/g' Abastecimentos.log
sed -i 's/\(^0800....\)300000/\1300904/g' Abastecimentos.log
sed -i 's/\(^0800....\)310000/\1310101/g' Abastecimentos.log
sed -i 's/\(^0800....\)320000/\1321803/g' Abastecimentos.log
sed -i 's/\(^0800....\)330000/\1330904/g' Abastecimentos.log
sed -i 's/\(^0800....\)340000/\1340101/g' Abastecimentos.log
