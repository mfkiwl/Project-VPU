///////////////////////////////////////////////////////
//  Copyright (c) 2011 Xilinx Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////
//
//   ____   ___
//  /   /\/   / 
// /___/  \  /     Vendor      : Xilinx 
// \  \    \/      Version     :  13.1
//  \  \           Description : 
//  /  /                      
// /__/   /\       Filename    : X_BUFG_LB.v
// \  \  /  \ 
//  \__\/\__ \                    
//                                 
//  Generated by :	/home/unified/patrickp/HEAD/env/Databases/CAEInterfaces/LibraryWriters/bin/ltw.pl
//  Revision:		1.0
//    11/15/11 - 634082 - connected ouput.
//  End Revision
///////////////////////////////////////////////////////

`timescale 1 ps / 1 ps 

module X_BUFG_LB (
  CLKOUT,

  CLKIN
);

  parameter LOC = "UNPLACED";
  output CLKOUT;
  input CLKIN;

  buf B_CLKOUT (CLKOUT, CLKIN);

  specify
    ( CLKIN *> CLKOUT) = (100:100:100, 100:100:100);
    specparam PATHPULSE$ = 0;
  endspecify

endmodule