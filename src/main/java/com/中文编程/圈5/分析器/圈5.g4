grammar 圈5;
程序: 声明+;

声明: 表达式 T新行 			#求值
  | T变量名 '=' 表达式 T新行	#赋值
  | T新行					#空行
  ;

表达式: 表达式 运算符=('*'|'/'|'×'|'÷') 表达式 	#乘除
  | 表达式 运算符=('+'|'-') 表达式 		#加減
  | T数					#数
  | T变量名				#变量
  | '(' 表达式 ')'		#括号
  ;

T变量名: ('a' .. 'z' | 'A' .. 'Z' | '\u4E00'..'\u9FA5' | '\uF900'..'\uFA2D')+;
T数
 : [0-9]+
 ;
T加 : '+';
T減 : '-';
T乘 : '*';
T数乘: '×';
T除 : '/';
T数除: '÷';
T新行: '\r'?'\n';