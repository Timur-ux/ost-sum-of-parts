all: L R BNorm K K2 K3 ENorm RemSlash ShiftLeft ShiftRight ./main.ost
	ost ./main.ost -l ./compiledLibs/ -o ./ -g

K: ./libs/K.ost
	ost ./libs/K.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K2: ./libs/K2.ost
	ost ./libs/K2.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K3: ./libs/K3.ost
	ost ./libs/K3.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K4: ./libs/K4.ost
	ost ./libs/K4.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K5: ./libs/K5.ost
	ost ./libs/K5.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K6: ./libs/K6.ost
	ost ./libs/K6.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

K7: ./libs/K7.ost
	ost ./libs/K7.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

L: ./libs/L.ost
	ost ./libs/L.ost -l ./compiledLibs/ -o ./compiledLibs/ -g 

R: ./libs/R.ost
	ost ./libs/R.ost -l ./compiledLibs/ -o ./compiledLibs/ -g 

RemSlash: ./libs/RemSlash.ost
	ost ./libs/RemSlash.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

ShiftLeft: ./libs/ShiftLeft.ost
	ost ./libs/ShiftLeft.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

ShiftRight: ./libs/ShiftRight.ost
	ost ./libs/ShiftRight.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

BNorm: ./libs/BNorm.ost
	ost ./libs/BNorm.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

ENorm: ./libs/ENorm.ost
	ost ./libs/ENorm.ost -l ./compiledLibs/ -o ./compiledLibs/ -g

