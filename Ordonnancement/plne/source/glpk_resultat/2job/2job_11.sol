Problem:    glpsolRcpsp
Rows:       76
Columns:    23 (22 integer, 22 binary)
Non-zeros:  259
Status:     INTEGER OPTIMAL
Objective:  obj = 8 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  3             3             = 
     2 periode[2]                  8             8             = 
     3 complet[1,1]                3                           3 
     4 complet[1,2]                3                           3 
     5 complet[1,3]                3                           3 
     6 complet[1,4]                3                           3 
     7 complet[1,5]               -1                           3 
     8 complet[1,6]                1                           3 
     9 complet[1,7]                0                           3 
    10 complet[1,8]                3                           3 
    11 complet[1,9]                0                           3 
    12 complet[2,1]                6                           8 
    13 complet[2,2]                5                           8 
    14 complet[2,3]                4                           8 
    15 complet[2,4]                3                           8 
    16 complet[2,5]                2                           8 
    17 complet[2,6]                1                           8 
    18 complet[2,7]                0                           8 
    19 complet[2,8]                8                           8 
    20 complet[2,9]                0                           8 
    21 cmax[1,1]                   8            -0               
    22 cmax[1,2]                   8            -0               
    23 cmax[1,3]                   8            -0               
    24 cmax[1,4]                   8            -0               
    25 cmax[1,5]                   8            -0               
    26 cmax[1,6]                   2            -0               
    27 cmax[1,7]                   1            -0               
    28 cmax[1,8]                   0            -0               
    29 cmax[1,9]                   8            -0               
    30 cmax[1,10]                  8            -0               
    31 cmax[1,11]                  8            -0               
    32 cmax[2,1]                   7            -0               
    33 cmax[2,2]                   6            -0               
    34 cmax[2,3]                   5            -0               
    35 cmax[2,4]                   4            -0               
    36 cmax[2,5]                   3            -0               
    37 cmax[2,6]                   2            -0               
    38 cmax[2,7]                   1            -0               
    39 cmax[2,8]                   0            -0               
    40 cmax[2,9]                   8            -0               
    41 cmax[2,10]                  8            -0               
    42 cmax[2,11]                  8            -0               
    43 ressource[1,1]
                                   1                           4 
    44 ressource[1,2]
                                   1                           4 
    45 ressource[1,3]
                                   1                           4 
    46 ressource[1,4]
                                   1                           4 
    47 ressource[1,5]
                                   1                           4 
    48 ressource[1,6]
                                   2                           4 
    49 ressource[1,7]
                                   2                           4 
    50 ressource[1,8]
                                   2                           4 
    51 ressource[1,9]
                                   0                           4 
    52 ressource[1,10]
                                   0                           4 
    53 ressource[1,11]
                                   0                           4 
    54 ressource[2,1]
                                   2                          13 
    55 ressource[2,2]
                                   2                          13 
    56 ressource[2,3]
                                   2                          13 
    57 ressource[2,4]
                                   2                          13 
    58 ressource[2,5]
                                   2                          13 
    59 ressource[2,6]
                                   3                          13 
    60 ressource[2,7]
                                   3                          13 
    61 ressource[2,8]
                                   3                          13 
    62 ressource[2,9]
                                   0                          13 
    63 ressource[2,10]
                                   0                          13 
    64 ressource[2,11]
                                   0                          13 
    65 ressource[3,1]
                                   6                          20 
    66 ressource[3,2]
                                   6                          20 
    67 ressource[3,3]
                                   6                          20 
    68 ressource[3,4]
                                   6                          20 
    69 ressource[3,5]
                                   6                          20 
    70 ressource[3,6]
                                  15                          20 
    71 ressource[3,7]
                                  15                          20 
    72 ressource[3,8]
                                  15                          20 
    73 ressource[3,9]
                                   0                          20 
    74 ressource[3,10]
                                   0                          20 
    75 ressource[3,11]
                                   0                          20 
    76 obj                         8                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              0             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              0             0             1 
     5 x[1,5]       *              0             0             1 
     6 x[1,6]       *              1             0             1 
     7 x[1,7]       *              1             0             1 
     8 x[1,8]       *              1             0             1 
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
    19 x[2,8]       *              1             0             1 
    20 x[2,9]       *              0             0             1 
    21 x[2,10]      *              0             0             1 
    22 x[2,11]      *              0             0             1 
    23 z                           8                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
