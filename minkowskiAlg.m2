loadPackage("Polyhedra", Reload=>true)

scaleNP = (I,r) ->
  (
  NP = newtonPolytope sum flatten entries gens I;
  return r*NP;
  )

minkowskiRound = (NP, r) ->
  (
  square = simplex(numgens(R), numgens(R)-(1/denominator(r)));
  minkPolytope = minkowskiSum(square,NP);
  return minkPolytope;
  )

 npPoints = (NP) ->
    (
    pointsInNP = apply(apply(latticePoints NP, entries), flatten);
    
    monomialGens = apply(pointsInNP, i -> R_0^(i_0));

    for n from 1 to (numgens(R)-1) do (
        inter = apply(pointsInNP, i -> R_n^(i_n));
        monomialGens = apply(monomialGens, inter, (i,j) -> i*j);
        );

    return monomialGens
    )

rPower = (I,r) ->
  (
  scaledNP = scaleNP(I, r);

  minkowskiRounded = minkowskiRound(scaledNP, r);

  monomialGens = npPoints(minkowskiRounded);

  return monomialIdeal(monomialGens);
  )

isJump = (I,r) ->
      (
      --Collectin non-trivial bounding equations
      scalednp = scaleNP(I,r);
      dimension = ambDim(scalednp);    
      scaledNP = minkowskiSum(scalednp, posOrthant(dimension));
      facetListnp = apply(facets(scalednp), f -> entries f);
      facetListNP = apply(facets(scaledNP), f -> entries f);
      --    Incredibly awkward syntax to collect equations in list form
      leftList = {};
      rightList = {};
      for i from 0 to #facetListNP#0-1 do (
         for j from 0 to #facetListnp#0-1 do (
             if facetListNP#0#i == facetListnp#0#j then ( 
                if facetListNP#1#i == facetListnp#1#j then (
                   leftList=append(leftList,facetListNP#0#i);
                   rightList=append(rightList,facetListNP#1#i);
      ))));
      -- Awkward syntax to make right sized zero-matrix
      zeroList = {};
      for i from 1 to dimension do (
	  zeroList=append(zeroList,0);
      );    
      zeroMatrix = matrix {zeroList};
      --Checking if intersection if facets contain any lattice points, if so it is a jumping number 
      for i from 0 to #leftList-1 do (
	  facetHPlane = polyhedronFromHData (zeroMatrix, matrix 0, matrix     {leftList#i}, matrix {rightList#i});
	  if (latticePoints intersection(scalednp,facetHPlane) != {}) then (
	      return true;
	  )
      );
      return false;
 )	   

jmpInRange = (I,L) ->
  (
      --Same awkwardness to get bounding equations. Could probably be put in a different fn.
      np = newtonPolytope sum flatten entries gens I;
      dimension = ambDim(np);    
      NP = minkowskiSum(np, posOrthant(dimension));
      facetListnp = apply(facets(np), f -> entries f);
      facetListNP = apply(facets(NP), f -> entries f);
      leftList = {};
      rightList = {};
      for i from 0 to #facetListNP#0-1 do (
         for j from 0 to #facetListnp#0-1 do (
             if facetListNP#0#i == facetListnp#0#j then ( 
                if facetListNP#1#i == facetListnp#1#j then (
                   leftList=append(leftList,facetListNP#0#i);
                   rightList=append(rightList,facetListNP#1#i);
      ))));
      --Doing gcd trick to find all possible jumping numbers
      jumpingNum = {};
      for i from 0 to #leftList-1 do (
	  r = abs (gcd(leftList#i)/rightList#i#0);
	  temp = r;
	  while (temp<= L) do (
	      -- Checking if actually a jumping number
	      if isJump(I,temp) then (
		  jumpingNum = append(jumpingNum, temp);
	      );
	      temp = temp+r;
	  );
      );
      return jumpingNum;
   )

