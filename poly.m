
Exten[N_,d_]:= Module[{m,f},
m = Floor[N^(1/d)];
f = IntegerDigits[N, m]]

CreatePolynomial[N_,d_]:= Function[{x},
Table[x^i, {i, d, 0, -1}].Exten[N,d]
	]
