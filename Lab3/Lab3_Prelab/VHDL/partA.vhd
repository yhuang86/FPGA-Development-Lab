ENTITY partA is
	PORT ( c1, c0, A, B	: IN BIT;
				F				: OUT BIT);
END partA;

ARCHITECTURE Behavior of partA is
Begin
F <= NOT( NOT(Not(c1)AND Not(c0) AND Not(A) AND Not(B)) AND 
	NOT(Not(c1)AND c0 AND A AND B) AND 
	NOT(c1 AND c0 AND Not(A) AND B) AND
	NOT(c1 AND c0 AND A AND Not(B)) AND 
	NOT(c1 AND Not(c0) AND Not(A) AND Not(B))AND 
	NOT(c1 AND Not(c0) AND A AND B));
END Behavior;