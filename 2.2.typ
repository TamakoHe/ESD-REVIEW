#set text(size: 15pt)
= 2.2 Static Errors
== 非理想运放的电流源模型
#image("2024-12-21-18-59-05.png")
加了两个电流源,对于简单的运放,可以认为$I_B(+)=I_B(-)$\
$ I_B=(I_B(+)+I_B(-))/2 $
== 两种误差的表示
- RTO:在输出上相加减多少能够消除这种误差
- RTI:在输入上相加减多少能够消除这种误差
#figure(caption: [消除小电流误差(前提是两个口的小电流误差相等)])[#image("2024-12-21-19-24-08.png", height: 30%)]
#figure(caption: [其实只需要上面两个电阻的并联值和下面的相等就可以了])[#image("2024-12-21-19-37-45.png")]<fig-bi>
#figure(caption: [Equal Bias Currents的重要实例])[#image("2024-12-22-10-09-18.png")]
#figure(caption: [Offset Bias Currents])[#image("2024-12-22-10-16-42.png")]
但是实际上$I_B(+)!=I_B(-)$,定义$I_"OS"=|I_B(+)-I_B(-)|$,$I_"OS"$就是Offset Current.最坏的情况是$I_B(+)=-I_B(-)$,所以$I_"OS"<=2I_B $,一般的放大器会尽量消除由于$I_B(+)$和$I_B(-)$本身所带来的误差, 像#ref(<fig-bi>)一样,但是前提是两个电流是相等的, 但是对$I_"OS"$没法修复, 消除小电流误差的电阻会由于$I_"OS"$把误差反而加大.
== 考虑$I_"OS"$所建立 的模型
#figure(caption: [Offset model])[#image("2024-12-22-10-35-23.png")]
$ I_B=(I_B(+)+I_B(-))/2 $
当运放输入端的阻抗 严重失配 时，两输入端的电流可能差异较大。此时，偏置电流$I_B$对输出误差的影响会更显著。\
如果两输入端的阻抗相对平衡，偏移电流$I_"OS"$是主要的误差来源\
不要混合使用偏置电流和偏移电流\
$I_B$会随着温度升高指数级的增长(FET工艺的运放).对于BJT工艺的运放,对于温度来说更加温度,适合在军事,航空航天等极端的领域使用.
= Offset Voltage
== Input Offset Voltage
在实际电路的运放中,需要加一个(+)到(-)的电压$V_"os"$才能使得输出电压$V_"out"=0$
#figure(caption: [Input Offset Voltage])[#image("2024-12-22-15-19-50.png")],
实际上这个是不能消除(eliminated)的,只能减小(reduced).很有随机性,各种芯片的值是不一样的,只能给出个大概的分布.\
造成的原因:
+ 内部芯片制作的时候的mismatch(制造工艺)
+ 在包装的时候的外部压力之内(包装运输)
CMOS器件的$V_"OS"$最低,而且受温度影响最小,JFET 劣势：较差的失调电压和漂移，Bipolar 折中：失调电压和漂移接近CMOS.
= Slew Rate(变化率)
运放根据输入的改变做出输出的改变的响应速度.(允许理论输出信号的最大变化幅度)
国际单位:$V\/S$,常用:$V\/mu S$,主要是由内部的电容来决定的.\
高的变化速率在需要快速响应的应用场景下特别重要
- 正弦信号的最大斜率$2pi f V_"p"$,$V_"p"$是峰值,一般是由于输出信号的理论变化太大导致被Slew Rate限制了