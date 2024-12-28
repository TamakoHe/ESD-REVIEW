#set text(size: 15pt)
= Q1 
(a):
mismatch of the input transistors and components during
fabrication of the silicon die and stresses placed on the die during the packaging process\
(b):\
$ V=-integral V_"os"/(R C) d t $

(c)\
  - $V_"out"=R_2 I_B(-)-I_B(+)R_P (1+R_2/R_1)$
  - $R_P=(R_1 R_2)/(R_1+R_2)$

(d)\
  - $"CMRR"=A_"dm"/A_"cm"$ In high-precision circuits, such as instrumentation amplifiers, even small common-mode voltages can lead to significant output errors when the CMRR is finite. 
(e)\
  - $V_"out"=105 "nA" times 10^6 =105 "mV"$
  - $R_3=R_1 parallel R_2=9901 Omega$
  - $-45.096"mV"$
(f)?
滤除电源噪声
= Q2
(a)\
$ v_o=v_"in(-)"-v_"in(+)" $
(b)\
(c)\
$ v_"out"=v_"in(-)"-v_"in(+)"+v_"os"+I_"os"R $
$ "RTO"=v_"os"+I_"os"R;R=10k Omega $
(d)\
$ F=V_"os"+I_"os"R $
= Q3
(a)\
To achieve a high CMRR. \
(b)\
- #image("2024-12-27-15-55-00.png")
- $A_"dm"=(R_b+2R_a)/R_b$
(c)\
#image("2024-12-27-16-14-34.png")
- 高输入阻抗:确保从源设备（如传感器）获取信号时不会对其造成负载影响。
- 高CMRR:能够有效抑制与信号无关的共模干扰，如电源线噪声和环境干扰。
- 可调增益:可以通过外部电阻简单调整增益，以适应不同的测量需求。
= Q4 
(a)\
Summarize possible strategies for improving the Signal to Noise ratio (SNR) when using operational amplifiers:\
+ Select a Low-Noise Op-Amp:减少输入的电流与电压噪声
+ Optimize Gain Settings(增加信号增益,抑制噪声增益)
+ Optimize Gain Settings(减少电阻所产生的热噪声)
+ Minimize Bandwidth(在输出端添加一个滤波器)
+ Shielding(屏蔽, 比如用双绞线)
(b):\
见App.typ
(c)
  - $"NEB"=n times "GBW"/"Noise Gain"=1.57 times "5.2MHz"/"101"=80.8 "kHz"$
    thermal:$1.159 times 10^(-5)$ and $1.159 times 10^(-6)$
  - 
    $E_"opamp"=e_"nw"dot sqrt("NEB")=4.55 times 10^(-6)$\
    $R_3=R_1 parallel R_2=1 k Omega$\
    $E_(R_1)=G_n dot 1.16 times 10^(-6)=117.16 mu V$\
    $E_(R_2)=G_n dot 1.16 times 10^(-5)=1170.59 mu V$\
    $E_"opamp"=G_n dot 4.55 mu V=459.55 mu V$\
    $E_(R_3)=G_n dot 1.15 mu V=116.15 mu V $\
    $E_"tot"=sqrt(117.16^2+1170.59^2+116.15^2+459.55^2)=1.262 "mV"$\
    $V_"sig"=2/sqrt(2)=1.414V$\
    $"SNR"=20 log_10 (1.414/(1.262 "mV"))=60.98 "dB"$
