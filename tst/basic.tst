gap> LoadPackage("GraphBacktracking", false);;
gap> ps3 := PartitionStack(3);
[ [ 1, 2, 3 ] ]
gap> ps4 := PartitionStack(4);
[ [ 1, 2, 3, 4 ] ]
gap> ps6 := PartitionStack(6);
[ [ 1, 2, 3, 4, 5, 6 ] ]
gap> Set(GB_SimpleSearch(ps3, [GB_Con.InGroup(3, SymmetricGroup(3))]));
[ (), (2,3), (1,2), (1,2,3), (1,3,2), (1,3) ]
gap> Set(GB_SimpleSearch(ps4, [GB_Con.InGroup(4, Group((1,2)(3,4)))]));
[ (), (1,2)(3,4) ]
gap> Set(GB_SimpleSearch(ps6, [GB_Con.InGroup(6, AlternatingGroup(6)), GB_Con.SetStab(6,[2,4,6]), GB_Con.TupleStab(6,[1,2]) ]));
[ (), (3,5)(4,6) ]
