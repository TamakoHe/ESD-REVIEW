#set text(size: 15pt)
#set math.equation(numbering: "[1]")
= 差分放大器,仪器放大器
只用一个运放作为差分放大器会由于低的CMRR导致不合适,
= Common mode rejection ratio Common mode rejection ratio (CMRR)
== $V_"cm"$共模输入的定义
#figure(caption: [$V_"cm"=(V_1+V_2)/2$])[#image("2024-12-23-10-00-26.png")]
也可以把输入表示成$V_(+)=V_"cm"+V_"diff"/2$,$V_(-)=V_"cm"-V_"diff"/2$
$ V_"out"=A_"dm"V_"diff"+A_"cm"V_"cm" $
对应共模增益和差模增益, 对于差分放大器, 只想要有差模增益, 定义
$ "CMRR"=|A_"dm"/A_"cm"| $
$ "CMR"=20 log_10("CMRR") $
对于理想差分放大器,这个值是无穷大.
= 仪器放大器
#figure(caption: [典型的仪器放大器,由三个运放组成])[#image("2024-12-23-15-17-46.png")]
红色部分的一级叫做buffering stage,剩下的叫做differential stage,缓冲可以增大输入电阻,
减小电流, 差分级的增益为1(unit).\
计算环3-1-2-4的电流:
$ I=(V_3-V_4)/(2R_a+R_b) $
$ I=(V_1-V_2)/R_b $
$ V_"out"=V_3-V_4=(V_1-V_2)((2R_a+R_b)/R_b) $<dif-1>
#ref(<dif-1>)展示了输出和输入差的关系, 所以表征的是$A_"diff"$(差模增益)
