Problem:    glpsolRcpsp
Rows:       41
Columns:    13 (12 integer, 12 binary)
Non-zeros:  109
Status:     INTEGER OPTIMAL
Objective:  obj = 4 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  2             2             = 
     2 periode[2]                  4             4             = 
     3 complet[1,1]                2                           2 
     4 complet[1,2]               -1                           2 
     5 complet[1,3]                0                           2 
     6 complet[1,4]                2                           2 
     7 complet[2,1]                2                           4 
     8 complet[2,2]                1                           4 
     9 complet[2,3]                0                           4 
    10 complet[2,4]                4                           4 
    11 cmax[1,1]                   4            -0               
    12 cmax[1,2]                   4            -0               
    13 cmax[1,3]                   1            -0               
    14 cmax[1,4]                   0            -0               
    15 cmax[1,5]                   4            -0               
    16 cmax[1,6]                   4            -0               
    17 cmax[2,1]                   3            -0               
    18 cmax[2,2]                   2            -0               
    19 cmax[2,3]                   1            -0               
    20 cmax[2,4]                   0            -0               
    21 cmax[2,5]                   4            -0               
    22 cmax[2,6]                   4            -0               
    23 ressource[1,1]
                                   3                           7 
    24 ressource[1,2]
                                   3                           7 
    25 ressource[1,3]
                                   4                           7 
    26 ressource[1,4]
                                   4                           7 
    27 ressource[1,5]
                                   0                           7 
    28 ressource[1,6]
                                   0                           7 
    29 ressource[2,1]
                                   6                          16 
    30 ressource[2,2]
                                   6                          16 
    31 ressource[2,3]
                                  10                          16 
    32 ressource[2,4]
                                  10                          16 
    33 ressource[2,5]
                                   0                          16 
    34 ressource[2,6]
                                   0                          16 
    35 ressource[3,1]
                                   8                          20 
    36 ressource[3,2]
                                   8                          20 
    37 ressource[3,3]
                                  16                          20 
    38 ressource[3,4]
                                  16                          20 
    39 ressource[3,5]
                                   0                          20 
    40 ressource[3,6]
                                   0                          20 
    41 obj                         4                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              0             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              1             0             1 
     4 x[1,4]       *              1             0             1 
     5 x[1,5]       *              0             0             1 
     6 x[1,6]       *              0             0             1 
     7 x[2,1]       *              1             0             1 
     8 x[2,2]       *              1             0             1 
     9 x[2,3]       *              1             0             1 
    10 x[2,4]       *              1             0             1 
    11 x[2,5]       *              0             0             1 
    12 x[2,6]       *              0             0             1 
    13 z                           4                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
