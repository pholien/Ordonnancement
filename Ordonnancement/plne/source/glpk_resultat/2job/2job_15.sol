Problem:    glpsolRcpsp
Rows:       76
Columns:    23 (22 integer, 22 binary)
Non-zeros:  259
Status:     INTEGER OPTIMAL
Objective:  obj = 11 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  8             8             = 
     2 periode[2]                  3             3             = 
     3 complet[1,1]                8                           8 
     4 complet[1,2]                8                           8 
     5 complet[1,3]               -1                           8 
     6 complet[1,4]                6                           8 
     7 complet[1,5]                5                           8 
     8 complet[1,6]                4                           8 
     9 complet[1,7]                3                           8 
    10 complet[1,8]                2                           8 
    11 complet[1,9]                1                           8 
    12 complet[2,1]                1                           3 
    13 complet[2,2]                0                           3 
    14 complet[2,3]                3                           3 
    15 complet[2,4]                0                           3 
    16 complet[2,5]                0                           3 
    17 complet[2,6]                0                           3 
    18 complet[2,7]                0                           3 
    19 complet[2,8]                0                           3 
    20 complet[2,9]                0                           3 
    21 cmax[1,1]                  11            -0               
    22 cmax[1,2]                  11            -0               
    23 cmax[1,3]                  11            -0               
    24 cmax[1,4]                   7            -0               
    25 cmax[1,5]                   6            -0               
    26 cmax[1,6]                   5            -0               
    27 cmax[1,7]                   4            -0               
    28 cmax[1,8]                   3            -0               
    29 cmax[1,9]                   2            -0               
    30 cmax[1,10]                  1            -0               
    31 cmax[1,11]                  0            -0               
    32 cmax[2,1]                  10            -0               
    33 cmax[2,2]                   9            -0               
    34 cmax[2,3]                   8            -0               
    35 cmax[2,4]                  11            -0               
    36 cmax[2,5]                  11            -0               
    37 cmax[2,6]                  11            -0               
    38 cmax[2,7]                  11            -0               
    39 cmax[2,8]                  11            -0               
    40 cmax[2,9]                  11            -0               
    41 cmax[2,10]                 11            -0               
    42 cmax[2,11]                 11            -0               
    43 ressource[1,1]
                                   3                           5 
    44 ressource[1,2]
                                   3                           5 
    45 ressource[1,3]
                                   3                           5 
    46 ressource[1,4]
                                   4                           5 
    47 ressource[1,5]
                                   4                           5 
    48 ressource[1,6]
                                   4                           5 
    49 ressource[1,7]
                                   4                           5 
    50 ressource[1,8]
                                   4                           5 
    51 ressource[1,9]
                                   4                           5 
    52 ressource[1,10]
                                   4                           5 
    53 ressource[1,11]
                                   4                           5 
    54 ressource[2,1]
                                   8                           9 
    55 ressource[2,2]
                                   8                           9 
    56 ressource[2,3]
                                   8                           9 
    57 ressource[2,4]
                                   5                           9 
    58 ressource[2,5]
                                   5                           9 
    59 ressource[2,6]
                                   5                           9 
    60 ressource[2,7]
                                   5                           9 
    61 ressource[2,8]
                                   5                           9 
    62 ressource[2,9]
                                   5                           9 
    63 ressource[2,10]
                                   5                           9 
    64 ressource[2,11]
                                   5                           9 
    65 ressource[3,1]
                                  10                          10 
    66 ressource[3,2]
                                  10                          10 
    67 ressource[3,3]
                                  10                          10 
    68 ressource[3,4]
                                  10                          10 
    69 ressource[3,5]
                                  10                          10 
    70 ressource[3,6]
                                  10                          10 
    71 ressource[3,7]
                                  10                          10 
    72 ressource[3,8]
                                  10                          10 
    73 ressource[3,9]
                                  10                          10 
    74 ressource[3,10]
                                  10                          10 
    75 ressource[3,11]
                                  10                          10 
    76 obj                        11                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              0             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              1             0             1 
     5 x[1,5]       *              1             0             1 
     6 x[1,6]       *              1             0             1 
     7 x[1,7]       *              1             0             1 
     8 x[1,8]       *              1             0             1 
     9 x[1,9]       *              1             0             1 
    10 x[1,10]      *              1             0             1 
    11 x[1,11]      *              1             0             1 
    12 x[2,1]       *              1             0             1 
    13 x[2,2]       *              1             0             1 
    14 x[2,3]       *              1             0             1 
    15 x[2,4]       *              0             0             1 
    16 x[2,5]       *              0             0             1 
    17 x[2,6]       *              0             0             1 
    18 x[2,7]       *              0             0             1 
    19 x[2,8]       *              0             0             1 
    20 x[2,9]       *              0             0             1 
    21 x[2,10]      *              0             0             1 
    22 x[2,11]      *              0             0             1 
    23 z                          11                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
