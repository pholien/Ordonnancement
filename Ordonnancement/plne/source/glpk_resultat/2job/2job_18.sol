Problem:    glpsolRcpsp
Rows:       76
Columns:    23 (22 integer, 22 binary)
Non-zeros:  259
Status:     INTEGER OPTIMAL
Objective:  obj = 7 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  4             4             = 
     2 periode[2]                  7             7             = 
     3 complet[1,1]                4                           4 
     4 complet[1,2]                4                           4 
     5 complet[1,3]               -1                           4 
     6 complet[1,4]                2                           4 
     7 complet[1,5]                1                           4 
     8 complet[1,6]                0                           4 
     9 complet[1,7]                4                           4 
    10 complet[1,8]                0                           4 
    11 complet[1,9]                0                           4 
    12 complet[2,1]                5                           7 
    13 complet[2,2]                4                           7 
    14 complet[2,3]                3                           7 
    15 complet[2,4]                2                           7 
    16 complet[2,5]                1                           7 
    17 complet[2,6]                0                           7 
    18 complet[2,7]                7                           7 
    19 complet[2,8]                0                           7 
    20 complet[2,9]                0                           7 
    21 cmax[1,1]                   7            -0               
    22 cmax[1,2]                   7            -0               
    23 cmax[1,3]                   7            -0               
    24 cmax[1,4]                   3            -0               
    25 cmax[1,5]                   2            -0               
    26 cmax[1,6]                   1            -0               
    27 cmax[1,7]                   0            -0               
    28 cmax[1,8]                   7            -0               
    29 cmax[1,9]                   7            -0               
    30 cmax[1,10]                  7            -0               
    31 cmax[1,11]                  7            -0               
    32 cmax[2,1]                   6            -0               
    33 cmax[2,2]                   5            -0               
    34 cmax[2,3]                   4            -0               
    35 cmax[2,4]                   3            -0               
    36 cmax[2,5]                   2            -0               
    37 cmax[2,6]                   1            -0               
    38 cmax[2,7]                   0            -0               
    39 cmax[2,8]                   7            -0               
    40 cmax[2,9]                   7            -0               
    41 cmax[2,10]                  7            -0               
    42 cmax[2,11]                  7            -0               
    43 ressource[1,1]
                                   4                           7 
    44 ressource[1,2]
                                   4                           7 
    45 ressource[1,3]
                                   4                           7 
    46 ressource[1,4]
                                   7                           7 
    47 ressource[1,5]
                                   7                           7 
    48 ressource[1,6]
                                   7                           7 
    49 ressource[1,7]
                                   7                           7 
    50 ressource[1,8]
                                   0                           7 
    51 ressource[1,9]
                                   0                           7 
    52 ressource[1,10]
                                   0                           7 
    53 ressource[1,11]
                                   0                           7 
    54 ressource[2,1]
                                   2                          13 
    55 ressource[2,2]
                                   2                          13 
    56 ressource[2,3]
                                   2                          13 
    57 ressource[2,4]
                                  10                          13 
    58 ressource[2,5]
                                  10                          13 
    59 ressource[2,6]
                                  10                          13 
    60 ressource[2,7]
                                  10                          13 
    61 ressource[2,8]
                                   0                          13 
    62 ressource[2,9]
                                   0                          13 
    63 ressource[2,10]
                                   0                          13 
    64 ressource[2,11]
                                   0                          13 
    65 ressource[3,1]
                                   2                          18 
    66 ressource[3,2]
                                   2                          18 
    67 ressource[3,3]
                                   2                          18 
    68 ressource[3,4]
                                  10                          18 
    69 ressource[3,5]
                                  10                          18 
    70 ressource[3,6]
                                  10                          18 
    71 ressource[3,7]
                                  10                          18 
    72 ressource[3,8]
                                   0                          18 
    73 ressource[3,9]
                                   0                          18 
    74 ressource[3,10]
                                   0                          18 
    75 ressource[3,11]
                                   0                          18 
    76 obj                         7                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              0             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              1             0             1 
     5 x[1,5]       *              1             0             1 
     6 x[1,6]       *              1             0             1 
     7 x[1,7]       *              1             0             1 
     8 x[1,8]       *              0             0             1 
     9 x[1,9]       *              0             0             1 
    10 x[1,10]      *              0             0             1 
    11 x[1,11]      *              0             0             1 
    12 x[2,1]       *              1             0             1 
    13 x[2,2]       *              1             0             1 
    14 x[2,3]       *              1             0             1 
    15 x[2,4]       *              1             0             1 
    16 x[2,5]       *              1             0             1 
    17 x[2,6]       *              1             0             1 
    18 x[2,7]       *              1             0             1 
    19 x[2,8]       *              0             0             1 
    20 x[2,9]       *              0             0             1 
    21 x[2,10]      *              0             0             1 
    22 x[2,11]      *              0             0             1 
    23 z                           7                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
