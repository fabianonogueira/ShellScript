#!/bin/bash

#http://cleitonbueno.com/shell-script-estrutura-condicional/

declare -A space
declare -A empty

Start() {
	for ((i=0;i<=3;i++))
	do
		for ((j=0;j<=3;j++))
		do
		    space[$i,$j]=""
		done
	done
	#	    space[0,0]="2"
	#	    space[1,0]="2"
	#	    space[2,0]="2"
	#	    space[3,0]="2"
}



Display() {
	#clear
#	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
#	printf "|%05s|%5s|%5s|%5s|\n" ${space[0,0]} ${space[0,1]} ${space[0,2]} ${space[0,3]}
#	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
#	printf "|%05s|%5s|%5s|%5s|\n" ${space[1,0]} ${space[1,1]} ${space[1,2]} ${space[1,3]}
#	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
#	printf "|%05s|%5s|%5s|%5s|\n" ${space[2,0]} ${space[2,1]} ${space[2,2]} ${space[2,3]}
#	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
#	printf "|%05s|%5s|%5s|%5s|\n" ${space[3,0]} ${space[3,1]} ${space[3,2]} ${space[3,3]}
#	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----

	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
	printf "|%05s|%5s|%5s|%5s|\n" ${space[0,0]} ${space[0,1]} ${space[0,2]} ${space[0,3]}
	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
	printf "|%05s|%5s|%5s|%5s|\n" ${space[1,0]} ${space[1,1]} ${space[1,2]} ${space[1,3]}
	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
	printf "|%05s|%5s|%5s|%5s|\n" ${space[2,0]} ${space[2,1]} ${space[2,2]} ${space[2,3]}
	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----
	printf "|%05s|%5s|%5s|%5s|\n" ${space[3,0]} ${space[3,1]} ${space[3,2]} ${space[3,3]}
	printf "|%05s|%5s|%5s|%5s|\n" ----- ----- ----- -----

#https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#RED='\033[0;31m'
#NC='\033[0m' # No Color
#printf "I ${RED}love${NC} Stack Overflow\n"

}

Random() {
	count=0;
	for ((i=0; i<4; i++)) do
		for ((j=0; j<4; j++)) do
			if [ "${space[$i,$j]}" == "" ]; then
				empty[$count]=$[i*10+j];
				echo "empty[$count] = ${empty[$count]} $i, $j"
				count=$[count + 1];
			fi
		done
	done
	if (($count > 0)); then
		rand=${empty[$(($RANDOM%$count))]};
		i=$[rand/10];
		j=$[rand%10];
		echo "RANDOM $i, $j"
#		space[$i,$j]=2;
		space[$i,$j]=$rand;
	else
		echo "!!! GAME OVER !!!"
		echo "!!! GAME OVER !!!"
		echo "!!! GAME OVER !!!"
		echo "!!! GAME OVER !!!"
		echo "!!! GAME OVER !!!"
		echo "!!! GAME OVER !!!"

	fi
	#echo $(($RANDOM%100+1))
}

MoveUP() {
	for ((j=0; j<1; j++)) do
		for ((i=0; i<3; i++)) do
			for ((x=$[i+1]; x<4; x++)) do
				#x=$[i+1];
				if [ "${space[$i,$j]}" != "" ]; then
					if [ "${space[$x,$j]}" != "" ]; then
						if [ "${space[$i,$j]}" == "${space[$x,$j]}" ]; then					
							echo "soma em ${space[$i,$j]} de $i,$j e $x,$j"
							space[$i,$j]=$[${space[$i,$j]}*2]
							space[$x,$j]="";
						fi
					fi
				fi
			done
		done
		for ((i=0; i<3; i++)) do
			for ((x=$[i+1]; x<4; x++)) do
				if [ "${space[$i,$j]}" == "" ]; then
					echo "move ${space[$x,$j]} de $x,$j para $i,$j"
					space[$i,$j]="${space[$x,$j]}";
					space[$x,$j]="";
				fi
			done
		done
	done
#	Display
	Random
	Display
}

MoveDOWN() {
	Random
	Display
}
MoveLEFT() {
	Random
	Display
}
MoveRIGHT() {
	Random
	Display
}

Key() {
	while :
	do
		read -s -rsn1 key
		#printf  "key %X" $key

		read -s -rsn1 -t 0.1 key2

		if [ $key2 = "[" ]
		then		
			read -s -rsn1 -t 0.1 key3
			if [ $key3 = "A" ]
			then
				#echo "up"
				MoveUP
			elif [ $key3 = "B" ]
			then
				echo "Down"
				MoveDOWN
			elif [ $key3 = "C" ]
			then
				echo "Right"
				MoveRIGHT
			elif [ $key3 = "D" ]
			then
				echo "left"
				MoveLEFT
			fi
		fi
		if [ $key = "q" ]
		then
			break
		fi

		if [ $key = "n" ]
		then
			space[3,0]=16;
			Display
		fi
		if [ $key = "r" ]
		then
			Random
			Display
		fi
	done
}


#printf "%15s - %12s - %6s\n" $i conectado `date +%H:%M:%S`



Start
#Random
Display
Key


