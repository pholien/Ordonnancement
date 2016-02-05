Problem:    glpsolRcpsp
Rows:       55
Columns:    17 (16 integer, 16 binary)
Non-zeros:  163
Status:     INTEGER OPTIMAL
Objective:  obj = 8 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  3             3             = 
     2 periode[2]                  5             5             = 
     3 complet[1,1]                1                           3 
     4 complet[1,2]                0                           3 
     5 complet[1,3]                3                           3 
     6 complet[1,4]                0                           3 
     7 complet[1,5]                0                           3 
     8 complet[1,6]                0                           3 
     9 complet[2,1]                5                           5 
    10 complet[2,2]                5                           5 
    11 complet[2,3]               -1                           5 
    12 complet[2,4]                3                           5 
    13 complet[2,5]                2                           5 
    14 complet[2,6]                1                           5 
    15 cmax[1,1]                   7            -0               
    16 cmax[1,2]                   6            -0               
    17 cmax[1,3]                   5            -0               
    18 cmax[1,4]                   8            -0               
    19 cmax[1,5]                   8            -0               
    20 cmax[1,6]                   8            -0               
    21 cmax[1,7]                   8            -0               
    22 cmax[1,8]                   8            -0               
    23 cmax[2,1]                   8            -0               
    24 cmax[2,2]                   8            -0               
    25 cmax[2,3]                   8            -0               
    26 cmax[2,4]                   4            -0               
    27 cmax[2,5]                   3            -0               
    28 cmax[2,6]                   2            -0               
    29 cmax[2,7]                   1            -0               
    30 cmax[2,8]                   0            -0               
    31 ressource[1,1]
                                   2                           6 
    32 ressource[1,2]
                                   2                           6 
    33 ressource[1,3]
                                   2                           6 
    34 ressource[1,4]
                                   4                           6 
    35 ressource[1,5]
                                   4                           6 
    36 ressource[1,6]
                                   4                           6 
    37 ressource[1,7]
                                   4                           6 
    38 ressource[1,8]
                                   4                           6 
    39 ressource[2,1]
                                   6                          14 
    40 ressource[2,2]
                                   6                          14 
    41 ressource[2,3]
                                   6                          14 
    42 ressource[2,4]
                                   5                          14 
    43 ressource[2,5]
                                   5                          14 
    44 ressource[2,6]
                                   5                          14 
    45 ressource[2,7]
                                   5                          14 
    46 ressource[2,8]
                                   5                          14 
    47 ressource[3,1]
                                   5                          11 
    48 ressource[3,2]
                                   5                          11 
    49 ressource[3,3]
                                   5                          11 
    50 ressource[3,4]
                                   9                          11 
    51 ressource[3,5]
                                   9                          11 
    52 ressource[3,6]
                                   9                          11 
    53 ressource[3,7]
                                   9                          11 
    54 ressource[3,8]
                                   9                          11 
    55 obj                         8                             

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
     9 x[2,1]       *              0             0             1 
    10 x[2,2]       *              0             0             1 
    11 x[2,3]       *              0             0             1 
    12 x[2,4]       *              1             0             1 
    13 x[2,5]       *              1             0             1 
    14 x[2,6]       *              1             0             1 
    15 x[2,7]       *              1             0             1 
    16 x[2,8]       *              1             0             1 
    17 z                           8                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
