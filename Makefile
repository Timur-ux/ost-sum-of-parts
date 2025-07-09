flags=-g
libdir=./compiledLibs/
all: L R BNorm K K2 K3 ENorm RemSlash ShiftLeft ShiftRight IsLess ./main.ost
	ost ./main.ost -l ${libdir} -o ./ ${flags}

K: ./libs/K.ost
	ost ./libs/K.ost -l ${libdir} -o ${libdir} ${flags}

K2: ./libs/K2.ost
	ost ./libs/K2.ost -l ${libdir} -o ${libdir} ${flags}

K3: ./libs/K3.ost
	ost ./libs/K3.ost -l ${libdir} -o ${libdir} ${flags}

K4: ./libs/K4.ost
	ost ./libs/K4.ost -l ${libdir} -o ${libdir} ${flags}

K5: ./libs/K5.ost
	ost ./libs/K5.ost -l ${libdir} -o ${libdir} ${flags}

K6: ./libs/K6.ost
	ost ./libs/K6.ost -l ${libdir} -o ${libdir} ${flags}

K7: ./libs/K7.ost
	ost ./libs/K7.ost -l ${libdir} -o ${libdir} ${flags}

L: ./libs/L.ost
	ost ./libs/L.ost -l ${libdir} -o ${libdir} ${flags} 

R: ./libs/R.ost
	ost ./libs/R.ost -l ${libdir} -o ${libdir} ${flags} 

RemSlash: ./libs/RemSlash.ost
	ost ./libs/RemSlash.ost -l ${libdir} -o ${libdir} ${flags}

ShiftLeft: ./libs/ShiftLeft.ost
	ost ./libs/ShiftLeft.ost -l ${libdir} -o ${libdir} ${flags}

ShiftRight: ./libs/ShiftRight.ost
	ost ./libs/ShiftRight.ost -l ${libdir} -o ${libdir} ${flags}

BNorm: ./libs/BNorm.ost
	ost ./libs/BNorm.ost -l ${libdir} -o ${libdir} ${flags}

ENorm: ./libs/ENorm.ost ShiftLeft
	ost ./libs/ENorm.ost -l ${libdir} -o ${libdir} ${flags}

CmpLength: ./libs/CmpLength.ost ENorm BNorm K3 L R
	ost ./libs/CmpLength.ost -l ${libdir} -o ${libdir} ${flags}

IsLess: ./libs/IsLess.ost ENorm BNorm K3 L R CmpLength
	ost ./libs/IsLess.ost -l ${libdir} -o ${libdir} ${flags}

Diff: ./libs/Diff.ost ENorm BNorm K2 K3 K L R ShiftLeft ShiftRight IsLess Reverse
	ost ./libs/Diff.ost -l ${libdir} -o ${libdir} ${flags}

Reverse: ./libs/Reverse.ost L R 
	ost ./libs/Reverse.ost -l ${libdir} -o ${libdir} ${flags}

IsEqual: ./libs/IsEqual.ost ENorm BNorm K3 L Reverse CmpLength R
	ost ./libs/IsEqual.ost -l ${libdir} -o ${libdir} ${flags}

GCD: ./libs/GCD.ost ENorm BNorm K3 K2 L Diff IsEqual IsLess
	ost ./libs/GCD.ost -l ${libdir} -o ${libdir} ${flags}

