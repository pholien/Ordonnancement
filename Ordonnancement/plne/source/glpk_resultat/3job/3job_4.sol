Problem:    glpsolRcpsp
Rows:       61
Columns:    22 (21 integer, 21 binary)
Non-zeros:  202
Status:     INTEGER OPTIMAL
Objective:  obj = 7 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 periode[1]                  1             1             = 
     2 periode[2]                  3             3             = 
     3 periode[3]                  3             3             = 
     4 complet[1,1]                1                           1 
     5 complet[1,2]                1                           1 
     6 complet[1,3]                1                           1 
     7 complet[1,4]                1                           1 
     8 complet[1,5]                1                           1 
     9 complet[2,1]                3                           3 
    10 complet[2,2]                3                           3 
    11 complet[2,3]               -1                           3 
    12 complet[2,4]                1                           3 
    13 complet[2,5]                0                           3 
    14 complet[3,1]                1                           3 
    15 complet[3,2]                0                           3 
    16 complet[3,3]                3                           3 
    17 complet[3,4]                0                           3 
    18 complet[3,5]                0                           3 
    19 cmax[1,1]                   7            -0               
    20 cmax[1,2]                   7            -0               
    21 cmax[1,3]                   7            -0               
    22 cmax[1,4]                   7            -0               
    23 cmax[1,5]                   7            -0               
    24 cmax[1,6]                   7            -0               
    25 cmax[1,7]                   0            -0               
    26 cmax[2,1]                   7            -0               
    27 cmax[2,2]                   7            -0               
    28 cmax[2,3]                   7            -0               
    29 cmax[2,4]                   3            -0               
    30 cmax[2,5]                   2            -0               
    31 cmax[2,6]                   1            -0               
    32 cmax[2,7]                   7            -0               
    33 cmax[3,1]                   6            -0               
    34 cmax[3,2]                   5            -0               
    35 cmax[3,3]                   4            -0               
    36 cmax[3,4]                   7            -0               
    37 cmax[3,5]                   7            -0               
    38 cmax[3,6]                   7            -0               
    39 cmax[3,7]                   7            -0               
    40 ressource[1,1]
                                   1                           5 
    41 ressource[1,2]
                                   1                           5 
    42 ressource[1,3]
                                   1                           5 
    43 ressource[1,4]
                                   1                           5 
    44 ressource[1,5]
                                   1                           5 
    45 ressource[1,6]
                                   1                           5 
    46 ressource[1,7]
                                   4                           5 
    47 ressource[2,1]
                                   5                           9 
    48 ressource[2,2]
                                   5                           9 
    49 ressource[2,3]
                                   5                           9 
    50 ressource[2,4]
                                   5                           9 
    51 ressource[2,5]
                                   5                           9 
    52 ressource[2,6]
                                   5                           9 
    53 ressource[2,7]
                                   8                           9 
    54 ressource[3,1]
                                   9                          16 
    55 ressource[3,2]
                                   9                          16 
    56 ressource[3,3]
                                   9                          16 
    57 ressource[3,4]
                                   6                          16 
    58 ressource[3,5]
                                   6                          16 
    59 ressource[3,6]
                                   6                          16 
    60 ressource[3,7]
                                   6                          16 
    61 obj                         7                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1,1]       *              0             0             1 
     2 x[1,2]       *              0             0             1 
     3 x[1,3]       *              0             0             1 
     4 x[1,4]       *              0             0             1 
     5 x[1,5]       *              0             0             1 
     6 x[1,6]       *              0             0             1 
     7 x[1,7]       *              1             0             1 
     8 x[2,1]       *              0             0             1 
     9 x[2,2]       *              0             0             1 
    10 x[2,3]       *              0             0             1 
    11 x[2,4]       *              1             0             1 
    12 x[2,5]       *              1             0             1 
    13 x[2,6]       *              1             0             1 
    14 x[2,7]       *              0             0             1 
    15 x[3,1]       *              1             0             1 
    16 x[3,2]       *              1             0             1 
    17 x[3,3]       *              1             0             1 
    18 x[3,4]       *              0             0             1 
    19 x[3,5]       *              0             0             1 
    20 x[3,6]       *              0             0             1 
    21 x[3,7]       *              0             0             1 
    22 z                           7                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
