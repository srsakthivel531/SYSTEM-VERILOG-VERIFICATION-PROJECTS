# Covergroup Coverage:
#     Covergroups                      1        na        na   100.00%
#         Coverpoints/Crosses          8        na        na        na
#             Covergroup Bins        118       118         0   100.00%

COVERGROUP COVERAGE:
# ----------------------------------------------------------------------------------------------------------
# Covergroup                                             Metric       Goal       Bins    Status               
#                                                                                                          
# ----------------------------------------------------------------------------------------------------------
#  TYPE /design_sv_unit/coverage/cg                     100.00%        100          -    Covered              
#     covered/total bins:                                   118        118          -                      
#     missing/total bins:                                     0        118          -                      
#     % Hit:                                            100.00%        100          -                      
#     Coverpoint cp_wr_en                               100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin w_en_0                                        106          1          -    Covered              
#         bin w_en_1                                        114          1          -    Covered              
#     Coverpoint cp_rd_en                               100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin r_en_0                                        115          1          -    Covered              
#         bin r_en_1                                        105          1          -    Covered              
#     Coverpoint cp_addr                                100.00%        100          -    Covered              
#         covered/total bins:                                16         16          -                      
#         missing/total bins:                                 0         16          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin addr[0]                                        17          1          -    Covered              
#         bin addr[1]                                         8          1          -    Covered              
#         bin addr[2]                                        18          1          -    Covered              
#         bin addr[3]                                        16          1          -    Covered              
#         bin addr[4]                                        16          1          -    Covered              
#         bin addr[5]                                         8          1          -    Covered              
#         bin addr[6]                                        12          1          -    Covered              
#         bin addr[7]                                        13          1          -    Covered              
#         bin addr[8]                                        13          1          -    Covered              
#         bin addr[9]                                        19          1          -    Covered              
#         bin addr[10]                                       14          1          -    Covered              
#         bin addr[11]                                       12          1          -    Covered              
#         bin addr[12]                                       10          1          -    Covered              
#         bin addr[13]                                       18          1          -    Covered              
#         bin addr[14]                                       16          1          -    Covered              
#         bin addr[15]                                       10          1          -    Covered              
#     Coverpoint cp_wdata                               100.00%        100          -    Covered              
#         covered/total bins:                                16         16          -                      
#         missing/total bins:                                 0         16          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin wd_first[0]                                    17          1          -    Covered              
#         bin wd_first[1]                                    13          1          -    Covered              
#         bin wd_first[2]                                     7          1          -    Covered              
#         bin wd_first[3]                                    17          1          -    Covered              
#         bin wd_sec[4]                                      17          1          -    Covered              
#         bin wd_sec[5]                                      14          1          -    Covered              
#         bin wd_sec[6]                                       4          1          -    Covered              
#         bin wd_sec[7]                                      17          1          -    Covered              
#         bin wd_thi[8]                                      15          1          -    Covered              
#         bin wd_thi[9]                                      12          1          -    Covered              
#         bin wd_thi[10]                                     11          1          -    Covered              
#         bin wd_thi[11]                                     10          1          -    Covered              
#         bin wd_fourth[12]                                  10          1          -    Covered              
#         bin wd_fourth[13]                                  14          1          -    Covered              
#         bin wd_fourth[14]                                  19          1          -    Covered              
#         bin wd_fourth[15]                                  23          1          -    Covered              
#     Coverpoint cp_rdata                               100.00%        100          -    Covered              
#         covered/total bins:                                16         16          -                      
#         missing/total bins:                                 0         16          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin rd_first[0]                                    43          1          -    Covered              
#         bin rd_first[1]                                    32          1          -    Covered              
#         bin rd_first[2]                                     7          1          -    Covered              
#         bin rd_first[3]                                    17          1          -    Covered              
#         bin rd_sec[4]                                      10          1          -    Covered              
#         bin rd_sec[5]                                      10          1          -    Covered              
#         bin rd_sec[6]                                       4          1          -    Covered              
#         bin rd_sec[7]                                      17          1          -    Covered              
#         bin rd_thi[8]                                      18          1          -    Covered              
#         bin rd_thi[9]                                      20          1          -    Covered              
#         bin rd_thi[10]                                      2          1          -    Covered              
#         bin rd_thi[11]                                      1          1          -    Covered              
#         bin rd_fourth[12]                                   7          1          -    Covered              
#         bin rd_fourth[13]                                  13          1          -    Covered              
#         bin rd_fourth[14]                                  15          1          -    Covered              
#         bin rd_fourth[15]                                   4          1          -    Covered              
#     Coverpoint cp_operation                           100.00%        100          -    Covered              
#         covered/total bins:                                 2          2          -                      
#         missing/total bins:                                 0          2          -                      
#         % Hit:                                        100.00%        100          -                      
#         bin write                                         114          1          -    Covered              
#         bin read                                          105          1          -    Covered              
#     Cross cross_wr_addr                               100.00%        100          -    Covered              
#         covered/total bins:                                32         32          -                      
#         missing/total bins:                                 0         32          -                      
#         % Hit:                                        100.00%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <w_en_1,addr[15]>                           7          1          -    Covered              
#             bin <w_en_1,addr[14]>                           9          1          -    Covered              
#             bin <w_en_1,addr[13]>                           6          1          -    Covered              
#             bin <w_en_1,addr[12]>                           4          1          -    Covered              
#             bin <w_en_1,addr[11]>                           7          1          -    Covered              
#             bin <w_en_1,addr[10]>                           7          1          -    Covered              
#             bin <w_en_1,addr[9]>                            8          1          -    Covered              
#             bin <w_en_1,addr[8]>                           10          1          -    Covered              
#             bin <w_en_1,addr[7]>                            8          1          -    Covered              
#             bin <w_en_1,addr[6]>                            6          1          -    Covered              
#             bin <w_en_1,addr[5]>                            5          1          -    Covered              
#             bin <w_en_1,addr[4]>                            6          1          -    Covered              
#             bin <w_en_1,addr[3]>                            7          1          -    Covered              
#             bin <w_en_1,addr[2]>                           11          1          -    Covered              
#             bin <w_en_1,addr[1]>                            4          1          -    Covered              
#             bin <w_en_1,addr[0]>                            9          1          -    Covered              
#             bin <w_en_0,addr[15]>                           3          1          -    Covered              
#             bin <w_en_0,addr[14]>                           7          1          -    Covered              
#             bin <w_en_0,addr[13]>                          12          1          -    Covered              
#             bin <w_en_0,addr[12]>                           6          1          -    Covered              
#             bin <w_en_0,addr[11]>                           5          1          -    Covered              
#             bin <w_en_0,addr[10]>                           7          1          -    Covered              
#             bin <w_en_0,addr[9]>                           11          1          -    Covered              
#             bin <w_en_0,addr[8]>                            3          1          -    Covered              
#             bin <w_en_0,addr[7]>                            5          1          -    Covered              
#             bin <w_en_0,addr[6]>                            6          1          -    Covered              
#             bin <w_en_0,addr[5]>                            3          1          -    Covered              
#             bin <w_en_0,addr[4]>                           10          1          -    Covered              
#             bin <w_en_0,addr[3]>                            9          1          -    Covered              
#             bin <w_en_0,addr[2]>                            7          1          -    Covered              
#             bin <w_en_0,addr[1]>                            4          1          -    Covered              
#             bin <w_en_0,addr[0]>                            8          1          -    Covered              
#     Cross cross_rd_addr                               100.00%        100          -    Covered              
#         covered/total bins:                                32         32          -                      
#         missing/total bins:                                 0         32          -                      
#         % Hit:                                        100.00%        100          -                      
#         Auto, Default and User Defined Bins:
#             bin <r_en_1,addr[15]>                           3          1          -    Covered              
#             bin <r_en_1,addr[14]>                           7          1          -    Covered              
#             bin <r_en_1,addr[13]>                          12          1          -    Covered              
#             bin <r_en_1,addr[12]>                           6          1          -    Covered              
#             bin <r_en_1,addr[11]>                           5          1          -    Covered              
#             bin <r_en_1,addr[10]>                           7          1          -    Covered              
#             bin <r_en_1,addr[9]>                           11          1          -    Covered              
#             bin <r_en_1,addr[8]>                            3          1          -    Covered              
#             bin <r_en_1,addr[7]>                            5          1          -    Covered              
#             bin <r_en_1,addr[6]>                            6          1          -    Covered              
#             bin <r_en_1,addr[5]>                            3          1          -    Covered              
#             bin <r_en_1,addr[4]>                           10          1          -    Covered              
#             bin <r_en_1,addr[3]>                            9          1          -    Covered              
#             bin <r_en_1,addr[2]>                            7          1          -    Covered              
#             bin <r_en_1,addr[1]>                            4          1          -    Covered              
#             bin <r_en_1,addr[0]>                            7          1          -    Covered              
#             bin <r_en_0,addr[15]>                           7          1          -    Covered              
#             bin <r_en_0,addr[14]>                           9          1          -    Covered              
#             bin <r_en_0,addr[13]>                           6          1          -    Covered              
#             bin <r_en_0,addr[12]>                           4          1          -    Covered              
#             bin <r_en_0,addr[11]>                           7          1          -    Covered              
#             bin <r_en_0,addr[10]>                           7          1          -    Covered              
#             bin <r_en_0,addr[9]>                            8          1          -    Covered              
#             bin <r_en_0,addr[8]>                           10          1          -    Covered              
#             bin <r_en_0,addr[7]>                            8          1          -    Covered              
#             bin <r_en_0,addr[6]>                            6          1          -    Covered              
#             bin <r_en_0,addr[5]>                            5          1          -    Covered              
#             bin <r_en_0,addr[4]>                            6          1          -    Covered              
#             bin <r_en_0,addr[3]>                            7          1          -    Covered              
#             bin <r_en_0,addr[2]>                           11          1          -    Covered              
#             bin <r_en_0,addr[1]>                            4          1          -    Covered              
#             bin <r_en_0,addr[0]>                           10          1          -    Covered              
# 
# TOTAL COVERGROUP COVERAGE: 100.00%  COVERGROUP TYPES: 1
