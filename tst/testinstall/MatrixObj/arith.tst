#@local matrix, matrixobj
gap> START_TEST("arith.tst");

#
gap> matrix:= [ [ 1, 1 ], [ 0, 1 ] ];;
gap> matrixobj:= Matrix( matrix );;
gap> matrix * matrixobj;
Error, multiplication of <matrix> and <matrixobj> is not supported
gap> matrixobj * matrix;
Error, multiplication of <matrixobj> and <matrix> is not supported

#
gap> STOP_TEST("arith.tst");
