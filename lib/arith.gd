#############################################################################
##
#W  arith.gd                    GAP library                     Thomas Breuer
##
#H  @(#)$Id$
##
#Y  Copyright (C)  1997,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
##
##  This file contains the declarations of the arithmetic operations, and the
##  declarations of the categories for elements that allow those operations.
##
##  This file contains the definitions of categories for elements in families
##  that allow certain arithmetical operations,
##  and the definition of properties, attributes, and operations for these
##  elements.
##
##  Note that the arithmetical operations are usually only partial functions.
##  This  means that  a  multiplicative  element is  simply an  element whose
##  family allows a multiplication of *some* of its  elements.  It does *not*
##  mean that the the product of *any* two elements in the family is defined,
##
Revision.arith_gd :=
    "@(#)$Id$";


#############################################################################
##
#C  IsExtAElement(<obj>)
##
IsExtAElement :=
    NewCategory( "IsExtAElement",
        IsObject );
IsExtAElementCollection :=
    CategoryCollections( IsExtAElement );
IsExtAElementCollColl :=
    CategoryCollections( IsExtAElementCollection );
IsExtAElementList :=
    IsExtAElementCollection and IsList;
IsExtAElementTable :=
    IsExtAElementCollColl   and IsTable;
InstallTrueMethod(
    IsExtAElement,
    IsExtAElementCollection );


#############################################################################
##
#C  IsAdditiveElement(<obj>)
##
IsAdditiveElement :=
    NewCategory( "IsAdditiveElement",
        IsExtAElement );
IsAdditiveElementCollection :=
    CategoryCollections( IsAdditiveElement );
IsAdditiveElementCollColl :=
    CategoryCollections( IsAdditiveElementCollection );
IsAdditiveElementCollCollColl :=
    CategoryCollections( IsAdditiveElementCollColl );
IsAdditiveElementList :=
    IsAdditiveElementCollection and IsList;
IsAdditiveElementTable :=
    IsAdditiveElementCollColl   and IsTable;
InstallTrueMethod(
    IsAdditiveElement,
    IsAdditiveElementList );
InstallTrueMethod(
    IsAdditiveElementList,
    IsAdditiveElementTable );


#############################################################################
##
#C  IsAdditiveElementWithZero(<obj>)
##
IsAdditiveElementWithZero :=
    NewCategory( "IsAdditiveElementWithZero",
        IsAdditiveElement );
IsAdditiveElementWithZeroCollection :=
    CategoryCollections( IsAdditiveElementWithZero );
IsAdditiveElementWithZeroCollColl :=
    CategoryCollections( IsAdditiveElementWithZeroCollection );
IsAdditiveElementWithZeroCollCollColl :=
    CategoryCollections( IsAdditiveElementWithZeroCollColl );
IsAdditiveElementWithZeroList :=
    IsAdditiveElementWithZeroCollection and IsList;
IsAdditiveElementWithZeroTable :=
    IsAdditiveElementWithZeroCollColl   and IsTable;
InstallTrueMethod(
    IsAdditiveElementWithZero,
    IsAdditiveElementWithZeroList );
InstallTrueMethod(
    IsAdditiveElementWithZeroList,
    IsAdditiveElementWithZeroTable );


#############################################################################
##
#C  IsAdditiveElementWithInverse(<obj>)
##
IsAdditiveElementWithInverse :=
    NewCategory( "IsAdditiveElementWithInverse",
        IsAdditiveElementWithZero );
IsAdditiveElementWithInverseCollection :=
    CategoryCollections( IsAdditiveElementWithInverse );
IsAdditiveElementWithInverseCollColl :=
    CategoryCollections( IsAdditiveElementWithInverseCollection );
IsAdditiveElementWithInverseCollCollColl :=
    CategoryCollections( IsAdditiveElementWithInverseCollColl );
IsAdditiveElementWithInverseList :=
    IsAdditiveElementWithInverseCollection and IsList;
IsAdditiveElementWithInverseTable :=
    IsAdditiveElementWithInverseCollColl   and IsTable;
InstallTrueMethod(
    IsAdditiveElementWithInverse,
    IsAdditiveElementWithInverseList );
InstallTrueMethod(
    IsAdditiveElementWithInverseList,
    IsAdditiveElementWithInverseTable );


#############################################################################
##
#C  IsExtLElement(<obj>)
##
IsExtLElement :=
    NewCategory( "IsExtLElement",
        IsObject );
IsExtLElementCollection :=
    CategoryCollections( IsExtLElement );
IsExtLElementCollColl :=
    CategoryCollections( IsExtLElementCollection );
IsExtLElementList :=
    IsExtLElementCollection and IsList;
IsExtLElementTable :=
    IsExtLElementCollColl   and IsTable;
InstallTrueMethod(
    IsExtLElement,
    IsExtLElementCollection );


#############################################################################
##
#C  IsExtRElement(<obj>)
##
IsExtRElement :=
    NewCategory( "IsExtRElement",
        IsObject );
IsExtRElementCollection :=
    CategoryCollections( IsExtRElement );
IsExtRElementCollColl :=
    CategoryCollections( IsExtRElementCollection );
IsExtRElementList :=
    IsExtRElementCollection and IsList;
IsExtRElementTable :=
    IsExtRElementCollColl   and IsTable;
InstallTrueMethod(
    IsExtRElement,
    IsExtRElementCollection );


#############################################################################
##
#C  IsMultiplicativeElement(<obj>)
##
IsMultiplicativeElement :=
    NewCategory( "IsMultiplicativeElement",
        IsExtLElement and IsExtRElement );
IsMultiplicativeElementCollection :=
    CategoryCollections( IsMultiplicativeElement );
IsMultiplicativeElementCollColl :=
    CategoryCollections( IsMultiplicativeElementCollection );
IsMultiplicativeElementCollCollColl :=
    CategoryCollections( IsMultiplicativeElementCollColl );
IsMultiplicativeElementList :=
    IsMultiplicativeElementCollection and IsList;
IsMultiplicativeElementTable :=
    IsMultiplicativeElementCollColl   and IsTable;


#############################################################################
##
#C  IsMultiplicativeElementWithOne(<obj>)
##
IsMultiplicativeElementWithOne :=
    NewCategory( "IsMultiplicativeElementWithOne",
        IsMultiplicativeElement );
IsMultiplicativeElementWithOneCollection :=
    CategoryCollections( IsMultiplicativeElementWithOne );
IsMultiplicativeElementWithOneCollColl :=
    CategoryCollections( IsMultiplicativeElementWithOneCollection );
IsMultiplicativeElementWithOneCollCollColl :=
    CategoryCollections( IsMultiplicativeElementWithOneCollColl );
IsMultiplicativeElementWithOneList :=
    IsMultiplicativeElementWithOneCollection and IsList;
IsMultiplicativeElementWithOneTable :=
    IsMultiplicativeElementWithOneCollColl   and IsTable;


#############################################################################
##
#C  IsMultiplicativeElementWithInverse(<obj>)
##
IsMultiplicativeElementWithInverse :=
    NewCategory( "IsMultiplicativeElementWithInverse",
        IsMultiplicativeElementWithOne );
IsMultiplicativeElementWithInverseCollection :=
    CategoryCollections( IsMultiplicativeElementWithInverse );
IsMultiplicativeElementWithInverseCollColl :=
    CategoryCollections( IsMultiplicativeElementWithInverseCollection );
IsMultiplicativeElementWithInverseCollCollColl :=
    CategoryCollections( IsMultiplicativeElementWithInverseCollColl );
IsMultiplicativeElementWithInverseList :=
    IsMultiplicativeElementWithInverseCollection and IsList;
IsMultiplicativeElementWithInverseTable :=
    IsMultiplicativeElementWithInverseCollColl   and IsTable;


#############################################################################
##
#C  IsVector(<obj>)
##
IsVector :=
        IsAdditiveElementWithInverse
    and IsExtLElement
    and IsExtRElement;
IsVectorCollection :=
        IsAdditiveElementWithInverseCollection
    and IsExtLElementCollection
    and IsExtRElementCollection;
IsVectorCollColl :=
        IsAdditiveElementWithInverseCollColl
    and IsExtLElementCollColl
    and IsExtRElementCollColl;
IsVectorList :=
        IsAdditiveElementWithInverseList
    and IsExtLElementList
    and IsExtRElementList;
IsVectorTable :=
        IsAdditiveElementWithInverseTable
    and IsExtLElementTable
    and IsExtRElementTable;


#############################################################################
##
#C  IsRingElement(<obj>)
##
IsRingElement :=
        IsAdditiveElementWithInverse
    and IsMultiplicativeElement;
IsRingElementCollection :=
        IsAdditiveElementWithInverseCollection
    and IsMultiplicativeElementCollection;
IsRingElementCollColl :=
        IsAdditiveElementWithInverseCollColl
    and IsMultiplicativeElementCollColl;
IsRingElementCollCollColl :=
        IsAdditiveElementWithInverseCollCollColl
    and IsMultiplicativeElementCollCollColl;
IsRingElementList :=
        IsAdditiveElementWithInverseList
    and IsMultiplicativeElementList;
IsRingElementTable :=
        IsAdditiveElementWithInverseTable
    and IsMultiplicativeElementTable;
InstallTrueMethod(
    IsRingElement,
    IsRingElementTable );

IsFamilyRingElements :=
    CategoryFamily( IsRingElement );


#############################################################################
##
#C  IsRingElementWithOne(<obj>)
##
IsRingElementWithOne :=
        IsAdditiveElementWithInverse
    and IsMultiplicativeElementWithOne;
IsRingElementWithOneCollection :=
        IsAdditiveElementWithInverseCollection
    and IsMultiplicativeElementWithOneCollection;
IsRingElementWithOneCollColl :=
        IsAdditiveElementWithInverseCollColl
    and IsMultiplicativeElementWithOneCollColl;
IsRingElementWithOneCollCollColl :=
        IsAdditiveElementWithInverseCollCollColl
    and IsMultiplicativeElementWithOneCollCollColl;
IsRingElementWithOneList :=
        IsAdditiveElementWithInverseList
    and IsMultiplicativeElementWithOneList;
IsRingElementWithOneTable :=
        IsAdditiveElementWithInverseTable
    and IsMultiplicativeElementWithOneTable;
InstallTrueMethod(
    IsRingElementWithOne,
    IsRingElementWithOneTable );


#############################################################################
##
#C  IsRingElementWithInverse(<obj>)
##
IsRingElementWithInverse :=
        IsAdditiveElementWithInverse
    and IsMultiplicativeElementWithInverse;
IsRingElementWithInverseCollection :=
        IsAdditiveElementWithInverseCollection
    and IsMultiplicativeElementWithInverseCollection;
IsRingElementWithInverseCollColl :=
        IsAdditiveElementWithInverseCollColl
    and IsMultiplicativeElementWithInverseCollColl;
IsRingElementWithInverseCollCollColl :=
        IsAdditiveElementWithInverseCollCollColl
    and IsMultiplicativeElementWithInverseCollCollColl;
IsRingElementWithInverseList :=
        IsAdditiveElementWithInverseList
    and IsMultiplicativeElementWithInverseList;
IsRingElementWithInverseTable :=
        IsAdditiveElementWithInverseTable
    and IsMultiplicativeElementWithInverseTable;
InstallTrueMethod(
    IsRingElementWithInverse,
    IsRingElementWithInverseTable );


#############################################################################
##
#C  IsScalar(<obj>)
##
IsScalar           := IsRingElementWithInverse;
IsScalarCollection := IsRingElementWithInverseCollection;
IsScalarCollColl   := IsRingElementWithInverseCollColl;
IsScalarList       := IsRingElementWithInverseList;
IsScalarTable      := IsRingElementWithInverseTable;


#############################################################################
##
#C  IsRowVector(<obj>)
##
IsRowVector := IsVector and IsHomogeneousList;


#############################################################################
##
#C  IsMatrix(<obj>)
##
IsMatrix           := IsRingElementTable;
IsMatrixCollection := CategoryCollections( IsMatrix );


#############################################################################
##
#C  IsAssociativeElement(<obj>)
#C                     category of elements belonging to associative families
##
IsAssociativeElement :=
    NewCategory( "IsAssociativeElement",
        IsMultiplicativeElement );

IsAssociativeElementCollection :=
    CategoryCollections( IsAssociativeElement );

IsAssociativeElementCollColl :=
    CategoryCollections( IsAssociativeElementCollection );


#############################################################################
##
#M  IsAssociativeElement( <mat> ) . .  for matrices that are internal objects
##
##  Matrices in internal representation and with entries in an associative
##  family are themselves associative elements.
##
InstallTrueMethod( IsAssociativeElement,
    IsMatrix and IsInternalRep and IsAssociativeElementCollColl );


#############################################################################
##
#C  IsCommutativeElement(<obj>)
#C                     category of elements belonging to commutative families
##
IsCommutativeElement :=
    NewCategory( "IsCommutativeElement",
        IsMultiplicativeElement );

IsCommutativeElementCollection :=
    CategoryCollections( IsCommutativeElement );


#############################################################################
##
#C  IsFiniteOrderElement(<obj>)
#C                      category of elements with finite multiplicative order
##
IsFiniteOrderElement :=
    NewCategory( "IsFiniteOrderElement",
        IsMultiplicativeElementWithInverse );

IsFiniteOrderElementCollection :=
    CategoryCollections( IsFiniteOrderElement );


#############################################################################
##
#C  IsJacobianElement(<obj>)
#C            category of elements belonging to families with Jacobi identity
##
IsJacobianElement :=
    NewCategory( "IsJacobianElement",
        IsRingElement );

IsJacobianElementCollection :=
    CategoryCollections( IsJacobianElement );


#############################################################################
##
#C  IsZeroSquaredElement(<obj>)
#C                    category of elements belonging to zero squared families
##
IsZeroSquaredElement :=
    NewCategory( "IsZeroSquaredElement",
        IsRingElement );

IsZeroSquaredElementCollection :=
    CategoryCollections( IsZeroSquaredElement );


#############################################################################
##
#P  IsZero(<elm>) . . . . . . . . . . . . . . . . . . . test for zero element
##
IsZero :=
    NewProperty( "IsZero",
        IsAdditiveElementWithZero );
SetIsZero := Setter( IsZero );
HasIsZero := Tester( IsZero );


#############################################################################
##
#P  IsOne(<elm>)  . . . . . . . . . . . . . . . . . . .  test for one element
##
IsOne :=
    NewProperty( "IsOne",
        IsMultiplicativeElementWithOne );
SetIsOne := Setter( IsOne );
HasIsOne := Tester( IsOne );


#############################################################################
##
#O  '<elm1>+<elm2>' . . . . . . . . . . . . . . . . . . . sum of two elements
##
\+ :=
    NewOperationKernel( "+",
        [ IsExtAElement, IsExtAElement ],
        SUM );


#############################################################################
##
#A  Zero(<obj>) . . . . . . . .  additive neutral of an element/domain/family
##
##  'Zero'  returns the additive neutral  element of <obj>, which must either
##  be an additive element, a domain, or a family.
##
##  For an element  'Zero(<elm>)' is equivalent to  '0|*|<elm>'.  If a domain
##  or a family has a zero, then all its elements must have the same zero (so
##  a  collections family, which contains  matrices of  all dimensions cannot
##  have a zero).
##
##  'Zero' may call 'Representative', but 'Representative' is allowed to
##  fetch the zero of a domain <D> only if 'HasZero( <D>) ' is 'true'.
##
Zero :=
    NewAttributeKernel( "Zero",
        IsAdditiveElementWithZero,
        ZERO );
SetZero := Setter( Zero );
HasZero := Tester( Zero );


#############################################################################
##
#A  AdditiveInverse(<elm>)  . . . . . . . . .  additive inverse of an element
##
AdditiveInverse :=
    NewAttributeKernel( "AdditiveInverse",
        IsAdditiveElementWithInverse,
        AINV );
SetAdditiveInverse := Setter( AdditiveInverse );
HasAdditiveInverse := Tester( AdditiveInverse );


#############################################################################
##
#O  '<elm1>-<elm2>' . . . . . . . . . . . . . . .  difference of two elements
##
\- :=
    NewOperationKernel( "-",
        [ IsExtAElement, IsAdditiveElementWithInverse ],
        DIFF );


#############################################################################
##
#O  '<elm1>*<elm2>' . . . . . . . . . . . . . . . . . product of two elements
##
\* :=
    NewOperationKernel( "*",
        [ IsExtRElement, IsExtLElement ],
        PROD );


#############################################################################
##
#A  One(<obj>)  . . . . .  multiplicative neutral of an element/domain/family
##
##  `One' returns  the  multiplicative neutral  element of <obj>,  which must
##  either be a multiplicative element, a domain, or a family.
##
##  For an element `One(<elm>)' is equivalent to `<elm>|^|0'.
##  If a domain or a family has a one, then all its elements (even a zero if
##  the domain or family has one) must have the same one (so a collections
##  family, which contains matrices of all dimensions, cannot have a one).
##
##  The one of an object need not be distinct from its zero,
##  so a ring consisting of a single element can be regarded as a
##  ring-with-one.
##  This is especially useful in the case of finitely presented algebras,
##  where a factor of a free algebra-with-one is again an algebra-with-one,
##  no matter whether or not it is a zero algebra.
##
##  `One' may call `Representative', but `Representative' is allowed to
##  fetch the one of a domain <D> only if `HasOne( <D>)' is `true'.
##
One :=
    NewAttributeKernel( "One",
        IsMultiplicativeElementWithOne,
        ONE );
SetOne := Setter( One );
HasOne := Tester( One );

Identity := One;
SetIdentity := SetOne;
HasIdentity := HasOne;


#############################################################################
##
#A  Inverse(<elm>)  . . . . . . . . . .  multiplicative inverse of an element
##
Inverse :=
    NewAttributeKernel( "Inverse",
        IsMultiplicativeElementWithInverse,
        INV );
SetInverse := Setter( Inverse );
HasInverse := Tester( Inverse );


#############################################################################
##
#O  '<elm1>/<elm2>' . . . . . . . . . . . . . . . .  quotient of two elements
##
\/ :=
    NewOperationKernel( "/",
        [ IsExtRElement, IsMultiplicativeElementWithInverse ],
        QUO );


#############################################################################
##
#O  LeftQuotient(<elm1>,<elm2>) . . . . . . . . left quotient of two elements
##
LeftQuotient :=
    NewOperationKernel( "LeftQuotient",
        [ IsMultiplicativeElementWithInverse, IsExtLElement ],
        LQUO );


#############################################################################
##
#O  '<elm1>^<elm2>' . . . . . . . . .  . . . . . . . .  power of two elements
##
\^ :=
    NewOperationKernel( "^",
        [ IsMultiplicativeElement, IsMultiplicativeElement ],
        POW );
#T  How is powering defined for nonassociative multiplication ??


#############################################################################
##
#O  Comm(<elm1>,<elm2>) . . . . . . . . . . . . .  commutator of two elements
##
Comm :=
    NewOperationKernel( "Comm",
        [ IsMultiplicativeElementWithInverse,
          IsMultiplicativeElementWithInverse ],
        COMM );


#############################################################################
##
#O  LieBracket(<elm1>,<elm2>) . . . . . . . . . . lie bracket of two elements
##
LieBracket :=
    NewOperation( "LieBracket",
        [ IsRingElement, IsRingElement ] );


#############################################################################
##
#O  '<elm1> mod <elm2>' . . . . . . . . . . . . . . . modulus of two elements
##
\mod :=
    NewOperationKernel( "mod",
        [ IsObject, IsObject ],
        MOD );


#############################################################################
##
#A  Int( <elm> )
##
Int :=
    NewAttribute( "Int",
        IsScalar );


#############################################################################
##
#O  Root( <n>, <k> )
#O  Root( <n> )
##
Root :=
    NewOperation( "Root",
        [ IsMultiplicativeElement, IS_INT ] );


#############################################################################
##
#O  Log(<elm>,<base>)
##
Log :=
    NewOperation( "Log",
        [ IsMultiplicativeElement, IsMultiplicativeElement ] );


#############################################################################
##
#A  Characteristic(<obj>) . . . .  characteristic of an element/domain/family
##
##  'Characteristic' returns  the characteristic of  <obj>, which must either
##  be an additive element, a domain or a family.
##
##  If a domain or a family has a characteristic,  then all its elements must
##  have the same characteristic.
##
Characteristic :=
    NewAttribute( "Characteristic",
        IsObject );
SetCharacteristic := Setter( Characteristic );
HasCharacteristic := Tester( Characteristic );


#############################################################################
##
#A  Order(<elm>)
##
Order :=
    NewAttribute( "Order",
        IsMultiplicativeElementWithOne );


#############################################################################
##
#A  NormedRowVector( <v> )
##
NormedRowVector :=
    NewAttribute( "NormedRowVector",
        IsRowVector and IsScalarCollection );


#############################################################################
##

#P  IsCommutativeFamily
##
IsCommutativeFamily := NewProperty(
    "IsCommutativeFamily",
    IsFamily );


#############################################################################
##
#P  IsSkewFieldFamily
##
IsSkewFieldFamily := NewProperty(
    "IsSkewFieldFamily",
    IsFamily );


#############################################################################
##
#P  IsUFDFamily( <family> )
##
##  the   <family>  is    at  least a    commutative  ring-with-one,  without
##  zero-divisors and  the    factorisations of elements into     elements of
##  <family> is unique (upto units and ordering)
##
IsUFDFamily := NewProperty(
    "IsUFDFamily",
    IsFamily );

SetIsUFDFamily := Setter(IsUFDFamily);
HasIsUFDFamily := Tester(IsUFDFamily);


#############################################################################
##

#E  arith.gd  . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here



