module point_gen(x_i, y_i, dy, p_or_n, Xn, Yn);

input [9:0] x_i, y_i;
input [10:0] dy;
input p_or_n;
output [9:0] Xn, Yn;


//21 bits for entire range of algorithm
wire [21:0] del_X, del_Y, del_Yf, del_sel;

assign del_X = x_i + x_i + 2;
assign del_Y = y_i + y_i + 1;
assign del_Yf = (p_or_n) ? (del_Y):(~del_Y + 1);
assign del_sel = (dy * del_X) + del_Yf;

//always step forward in the x direction
assign Xn = x_i + 1;
//select if you want y_i or y_i+1
//algorithm equals dx(d1-d2)
assign Yn = (del_sel[21]) ? y_i:(y_i + 1);

endmodule