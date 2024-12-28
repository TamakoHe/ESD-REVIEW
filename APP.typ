#set text(size: 15pt)
#figure(caption: [把这个图,还有CMRR记下来])[#image("2024-12-27-16-42-32.png")]
= 关于噪声
== Power Spectral Density(功率谱密度)
在固定的频率间隔df中获得的噪声功率\
单位:$V^2/(H z)$或者$V/sqrt(H z)$\
== 信噪比(SNR)
$ "SNR"=20 log_10 ("rms of signal"/"rms of noise") $
rms:信号的有效值
== 电压白噪声(单个电阻热噪声)
$ E_r=sqrt(4 R k T Delta f) $
- k:玻尔兹曼常数
- R:电阻值
- T:热力学温度
- $Delta f$:带宽 
== 电流白噪声密度
可以乘以正负端的电阻转换为电压
== 白噪声
在所有频率上的幅度都是一样的
== 噪声带宽
#image("2024-12-27-19-01-07.png") 
$ "NEB"=n times "GBW"/"Noise Gain" $
$n$:放大器阶数对应的经验常数\
$"GBW"$:增益带宽, 一般为固定指标
$"Noise Gain"$:放大器对正端等效噪声的增益(不一定是信号增益)\
都认为噪声信号接在非反向输入端, $"Noise Gain"$可以认为是把实际信号设为0, 
单独对噪声的增益.
#image("2024-12-27-19-26-21.png")
#figure(caption: [白噪声NEB的关键:能量上等效])[#image("2024-12-27-20-08-39.png")]
$Delta f$就是运放的NEB($n times f_H$)
#image("2024-12-28-17-00-58.png")
$ f_H="GBW"/G_n $
$G_n$:噪声增益\
$"GBW"$:噪声等效带宽
= 关于总噪声的计算
#image("2024-12-28-18-12-12.png")
== 组成部分
- 由于$R_1$,$R_2$和$R_3$的的热噪声$E_r=sqrt(4 R k T Delta f)$
- 运放电流噪声:找到输入端, $E_"nn"=R_1 parallel R_2 times i_"nw" sqrt("NEB")$
- 运放电压噪声:$E_n=e_"nw"sqrt("NEB")$
- 求解输入噪声:$E_"in"=sqrt(E_(R_1 parallel R_2)^2+E_(R_3)^2+E_"opampv"^2+E_"opampi^2")$
- 输出噪声:$E_"no"=E_"ni" times G_n$($G_n$是噪声增益)
