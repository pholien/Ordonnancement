Problem:    glpsolRcpsp
Rows:       76
Columns:    23 (22 integer, 22 binary)
Non-zeros:  259
Status:     INTEGER OPTIMAL
Objective:  obj = 10 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  1             1             = 
     2 periode[2]                 10            10             = 
     3 complet[1,1]                1                           1 
     4 complet[1,2]                0                           1 
     5 complet[1,3]                0                           1 
     6 complet[1,4]                0                           1 
     7 complet[1,5]                0                           1 
     8 complet[1,6]                0                           1 
     9 complet[1,7]                0                           1 
    10 complet[1,8]                0                           1 
    11 complet[1,9]                0                           1 
    12 complet[2,1]                8                          10 
    13 complet[2,2]                7                          10 
    14 complet[2,3]                6                          10 
    15 complet[2,4]                5                          10 
    16 complet[2,5]                4                          10 
    17 complet[2,6]                3                          10 
    18 complet[2,7]                2                          10 
    19 complet[2,8]                1                          10 
    20 complet[2,9]                0                          10 
    21 cmax[1,1]                   9            -0               
    22 cmax[1,2]                  10            -0               
    23 cmax[1,3]                  10            -0               
    24 cmax[1,4]                  10            -0               
    25 cmax[1,5]                  10            -0               
    26 cmax[1,6]                  10            -0               
    27 cmax[1,7]                  10            -0               
    28 cmax[1,8]                  10            -0               
    29 cmax[1,9]                  10            -0               
    30 cmax[1,10]                 10            -0               
    31 cmax[1,11]                 10            -0               
    32 cmax[2,1]                   9            -0               
    33 cmax[2,2]                   8            -0               
    34 cmax[2,3]                   7            -0               
    35 cmax[2,4]                   6            -0               
    36 cmax[2,5]                   5            -0               
    37 cmax[2,6]                   4            -0               
    38 cmax[2,7]                   3            -0               
    39 cmax[2,8]                   2            -0               
    40 cmax[2,9]                   1            -0               
    41 cmax[2,10]                  0            -0               
    42 cmax[2,11]                 10            -0               
    43 ressource[1,1]
                                   6                           8 
    44 ressource[1,2]
                                   2                           8 
    45 ressource[1,3]
                                   2                           8 
    46 ressource[1,4]
                                   2                           8 
    47 ressource[1,5]
                                   2                           8 
    48 ressource[1,6]
                                   2                           8 
    49 ressource[1,7]
                                   2                           8 
    50 ressource[1,8]
                                   2                           8 
    51 ressource[1,9]
                                   2                           8 
    52 ressource[1,10]
                                   2                           8 
    53 ressource[1,11]
                                   0                           8 
    54 ressource[2,1]
                                   8                          16 
    55 ressource[2,2]
                                   1                          16 
    56 ressource[2,3]
                                   1                          16 
    57 ressource[2,4]
                                   1                          16 
    58 ressource[2,5]
                                   1                          16 
    59 ressource[2,6]
                                   1                          16 
    60 ressource[2,7]
                                   1                          16 
    61 ressource[2,8]
                                   1                          16 
    62 ressource[2,9]
                                   1                          16 
    63 ressource[2,10]
                                   1                          16 
    64 ressource[2,11]
                                   0                          16 
    65 ressource[3,1]
                                  12                          12 
    66 ressource[3,2]
                                  10                          12 
    67 ressource[3,3]
                                  10                          12 
    68 ressource[3,4]
                                  10                          12 
    69 ressource[3,5]
                                  10                          12 
    70 ressource[3,6]
                                  10                          12 
    71 ressource[3,7]
                                  10                          12 
    72 ressource[3,8]
                                  10                          12 
    73 ressource[3,9]
                                  10                          12 
    74 ressource[3,10]
                                  10                          12 
    75 ressource[3,11]
                                   0                          12 
    76 obj                        10                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              1             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              0             0             1 
     5 x[1,5]       *              0             0             1 
     6 x[1,6]       *              0             0             1 
     7 x[1,7]       *              0             0             1 
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
    19 x[2,8]       *              1             0             1 
    20 x[2,9]       *              1             0             1 
    21 x[2,10]      *              1             0             1 
    22 x[2,11]      *              0             0             1 
    23 z                          10                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
