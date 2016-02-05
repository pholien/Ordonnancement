Problem:    glpsolRcpsp
Rows:       27
Columns:    9 (8 integer, 8 binary)
Non-zeros:  63
Status:     INTEGER OPTIMAL
Objective:  obj = 4 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  2             2             = 
     2 periode[2]                  2             2             = 
     3 complet[1,1]                0                           2 
     4 complet[1,2]                2                           2 
     5 complet[2,1]                2                           2 
     6 complet[2,2]               -1                           2 
     7 cmax[1,1]                   3            -0               
     8 cmax[1,2]                   2            -0               
     9 cmax[1,3]                   4            -0               
    10 cmax[1,4]                   4            -0               
    11 cmax[2,1]                   4            -0               
    12 cmax[2,2]                   4            -0               
    13 cmax[2,3]                   1            -0               
    14 cmax[2,4]                   0            -0               
    15 ressource[1,1]
                                   3                           4 
    16 ressource[1,2]
                                   3                           4 
    17 ressource[1,3]
                                   3                           4 
    18 ressource[1,4]
                                   3                           4 
    19 ressource[2,1]
                                   1                           9 
    20 ressource[2,2]
                                   1                           9 
    21 ressource[2,3]
                                   5                           9 
    22 ressource[2,4]
                                   5                           9 
    23 ressource[3,1]
                                   5                          15 
    24 ressource[3,2]
                                   5                          15 
    25 ressource[3,3]
                                   5                          15 
    26 ressource[3,4]
                                   5                          15 
    27 obj                         4                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              1             0             1 
     2 x[1,2]       *              1             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              0             0             1 
     5 x[2,1]       *              0             0             1 
     6 x[2,2]       *              0             0             1 
     7 x[2,3]       *              1             0             1 
     8 x[2,4]       *              1             0             1 
     9 z                           4                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
