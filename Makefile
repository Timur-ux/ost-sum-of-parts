flags=-g
libdir=./compiledLibs/
all: ./main.ost L.tu4 R.tu4 BNorm.tu4 K.tu4 K2.tu4 K3.tu4 ENorm.tu4 RemSlash.tu4 ShiftLeft.tu4 ShiftRight.tu4 IsLess.tu4
	ost ./main.ost -l ${libdir} -o ./ ${flags}

K.tu4: ./libs/K.ost
	ost ./libs/K.ost -l ${libdir} -o ${libdir} ${flags}

K2.tu4: ./libs/K2.ost
	ost ./libs/K2.ost -l ${libdir} -o ${libdir} ${flags}

K3.tu4: ./libs/K3.ost
	ost ./libs/K3.ost -l ${libdir} -o ${libdir} ${flags}

K4.tu4: ./libs/K4.ost
	ost ./libs/K4.ost -l ${libdir} -o ${libdir} ${flags}

K5.tu4: ./libs/K5.ost
	ost ./libs/K5.ost -l ${libdir} -o ${libdir} ${flags}

K6.tu4: ./libs/K6.ost
	ost ./libs/K6.ost -l ${libdir} -o ${libdir} ${flags}

K7.tu4: ./libs/K7.ost
	ost ./libs/K7.ost -l ${libdir} -o ${libdir} ${flags}

L.tu4: ./libs/L.ost
	ost ./libs/L.ost -l ${libdir} -o ${libdir} ${flags} 

R.tu4: ./libs/R.ost
	ost ./libs/R.ost -l ${libdir} -o ${libdir} ${flags} 

RemSlash.tu4: ./libs/RemSlash.ost
	ost ./libs/RemSlash.ost -l ${libdir} -o ${libdir} ${flags}

ShiftLeft.tu4: ./libs/ShiftLeft.ost
	ost ./libs/ShiftLeft.ost -l ${libdir} -o ${libdir} ${flags}

ShiftRight.tu4: ./libs/ShiftRight.ost
	ost ./libs/ShiftRight.ost -l ${libdir} -o ${libdir} ${flags}

BNorm.tu4: ./libs/BNorm.ost
	ost ./libs/BNorm.ost -l ${libdir} -o ${libdir} ${flags}

ENorm.tu4: ./libs/ENorm.ost ShiftLeft.tu4
	ost ./libs/ENorm.ost -l ${libdir} -o ${libdir} ${flags}

CmpLength.tu4: ./libs/CmpLength.ost ENorm.tu4 BNorm.tu4 K3.tu4 L.tu4 R.tu4
	ost ./libs/CmpLength.ost -l ${libdir} -o ${libdir} ${flags}

IsLess.tu4: ./libs/IsLess.ost ENorm.tu4 BNorm.tu4 K3.tu4 L.tu4 R.tu4 CmpLength.tu4
	ost ./libs/IsLess.ost -l ${libdir} -o ${libdir} ${flags}

Diff.tu4: ./libs/Diff.ost ENorm.tu4 BNorm.tu4 K2.tu4 K3.tu4 K.tu4 L.tu4 R.tu4 ShiftLeft.tu4 ShiftRight.tu4 IsLess.tu4 Reverse.tu4 
	ost ./libs/Diff.ost -l ${libdir} -o ${libdir} ${flags}

Reverse.tu4: ./libs/Reverse.ost L.tu4 R.tu4 
	ost ./libs/Reverse.ost -l ${libdir} -o ${libdir} ${flags}

IsEqual.tu4: ./libs/IsEqual.ost ENorm.tu4 BNorm.tu4 K3.tu4 L.tu4 Reverse.tu4 CmpLength.tu4 R.tu4
	ost ./libs/IsEqual.ost -l ${libdir} -o ${libdir} ${flags}

GCD.tu4: ./libs/GCD.ost ENorm.tu4 BNorm.tu4 K3.tu4 K2.tu4 L.tu4 Diff.tu4 IsEqual.tu4 IsLess.tu4
	ost ./libs/GCD.ost -l ${libdir} -o ${libdir} ${flags}

Sum.tu4: ./libs/Sum.ost ENorm.tu4 BNorm.tu4 K2.tu4 K3.tu4 L.tu4 R.tu4 IsLess.tu4 ShiftLeft.tu4 ShiftRight.tu4 Reverse.tu4 
	ost ./libs/Sum.ost -l ${libdir} -o ${libdir} ${flags}

Mult.tu4: ./libs/Mult.ost ENorm.tu4 BNorm.tu4 K2.tu4 K3.tu4 L.tu4 R.tu4 K4.tu4 K6.tu4 ShiftRight.tu4 ShiftLeft.tu4 K7.tu4 K5.tu4
	ost ./libs/Mult.ost -l ${libdir} -o ${libdir} ${flags}


