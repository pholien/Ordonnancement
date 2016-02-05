Problem:    glpsolRcpsp
Rows:       88
Columns:    31 (30 integer, 30 binary)
Non-zeros:  337
Status:     INTEGER OPTIMAL
Objective:  obj = 6 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  3             3             = 
     2 periode[2]                  3             3             = 
     3 periode[3]                  4             4             = 
     4 complet[1,1]                1                           3 
     5 complet[1,2]                0                           3 
     6 complet[1,3]                3                           3 
     7 complet[1,4]                0                           3 
     8 complet[1,5]                0                           3 
     9 complet[1,6]                0                           3 
    10 complet[1,7]                0                           3 
    11 complet[1,8]                0                           3 
    12 complet[2,1]                3                           3 
    13 complet[2,2]                3                           3 
    14 complet[2,3]               -1                           3 
    15 complet[2,4]                1                           3 
    16 complet[2,5]                0                           3 
    17 complet[2,6]                3                           3 
    18 complet[2,7]                0                           3 
    19 complet[2,8]                0                           3 
    20 complet[3,1]               -1                           4 
    21 complet[3,2]                2                           4 
    22 complet[3,3]                1                           4 
    23 complet[3,4]                0                           4 
    24 complet[3,5]                4                           4 
    25 complet[3,6]                0                           4 
    26 complet[3,7]                0                           4 
    27 complet[3,8]                0                           4 
    28 cmax[1,1]                   5            -0               
    29 cmax[1,2]                   4            -0               
    30 cmax[1,3]                   3            -0               
    31 cmax[1,4]                   6            -0               
    32 cmax[1,5]                   6            -0               
    33 cmax[1,6]                   6            -0               
    34 cmax[1,7]                   6            -0               
    35 cmax[1,8]                   6            -0               
    36 cmax[1,9]                   6            -0               
    37 cmax[1,10]                  6            -0               
    38 cmax[2,1]                   6            -0               
    39 cmax[2,2]                   6            -0               
    40 cmax[2,3]                   6            -0               
    41 cmax[2,4]                   2            -0               
    42 cmax[2,5]                   1            -0               
    43 cmax[2,6]                   0            -0               
    44 cmax[2,7]                   6            -0               
    45 cmax[2,8]                   6            -0               
    46 cmax[2,9]                   6            -0               
    47 cmax[2,10]                  6            -0               
    48 cmax[3,1]                   6            -0               
    49 cmax[3,2]                   4            -0               
    50 cmax[3,3]                   3            -0               
    51 cmax[3,4]                   2            -0               
    52 cmax[3,5]                   1            -0               
    53 cmax[3,6]                   6            -0               
    54 cmax[3,7]                   6            -0               
    55 cmax[3,8]                   6            -0               
    56 cmax[3,9]                   6            -0               
    57 cmax[3,10]                  6            -0               
    58 ressource[1,1]
                                   4                           5 
    59 ressource[1,2]
                                   5                           5 
    60 ressource[1,3]
                                   5                           5 
    61 ressource[1,4]
                                   5                           5 
    62 ressource[1,5]
                                   5                           5 
    63 ressource[1,6]
                                   4                           5 
    64 ressource[1,7]
                                   0                           5 
    65 ressource[1,8]
                                   0                           5 
    66 ressource[1,9]
                                   0                           5 
    67 ressource[1,10]
                                   0                           5 
    68 ressource[2,1]
                                   3                          11 
    69 ressource[2,2]
                                   7                          11 
    70 ressource[2,3]
                                   7                          11 
    71 ressource[2,4]
                                   6                          11 
    72 ressource[2,5]
                                   6                          11 
    73 ressource[2,6]
                                   2                          11 
    74 ressource[2,7]
                                   0                          11 
    75 ressource[2,8]
                                   0                          11 
    76 ressource[2,9]
                                   0                          11 
    77 ressource[2,10]
                                   0                          11 
    78 ressource[3,1]
                                  10                          20 
    79 ressource[3,2]
                                  18                          20 
    80 ressource[3,3]
                                  18                          20 
    81 ressource[3,4]
                                  11                          20 
    82 ressource[3,5]
                                  11                          20 
    83 ressource[3,6]
                                   3                          20 
    84 ressource[3,7]
                                   0                          20 
    85 ressource[3,8]
                                   0                          20 
    86 ressource[3,9]
                                   0                          20 
    87 ressource[3,10]
                                   0                          20 
    88 obj                         6                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              1             0             1 
     2 x[1,2]       *              1             0             1 
     3 x[1,3]       *              1             0             1 
     4 x[1,4]       *              0             0             1 
     5 x[1,5]       *              0             0             1 
     6 x[1,6]       *              0             0             1 
     7 x[1,7]       *              0             0             1 
     8 x[1,8]       *              0             0             1 
     9 x[1,9]       *              0             0             1 
    10 x[1,10]      *              0             0             1 
    11 x[2,1]       *              0             0             1 
    12 x[2,2]       *              0             0             1 
    13 x[2,3]       *              0             0             1 
    14 x[2,4]       *              1             0             1 
    15 x[2,5]       *              1             0             1 
    16 x[2,6]       *              1             0             1 
    17 x[2,7]       *              0             0             1 
    18 x[2,8]       *              0             0             1 
    19 x[2,9]       *              0             0             1 
    20 x[2,10]      *              0             0             1 
    21 x[3,1]       *              0             0             1 
    22 x[3,2]       *              1             0             1 
    23 x[3,3]       *              1             0             1 
    24 x[3,4]       *              1             0             1 
    25 x[3,5]       *              1             0             1 
    26 x[3,6]       *              0             0             1 
    27 x[3,7]       *              0             0             1 
    28 x[3,8]       *              0             0             1 
    29 x[3,9]       *              0             0             1 
    30 x[3,10]      *              0             0             1 
    31 z                           6                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
