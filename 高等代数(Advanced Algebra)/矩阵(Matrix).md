# Matrix

---

## 矩阵的二项式展开

$$
AB=BA\Rightarrow(A+B)^k=\sum_{i=0}^k C_k^iA^iB^{k-i}\\
$$
**证明:**

**对次数k归纳,k=1时**
$$
A+B=B+A=EB+AE=C_1^0A^0B+C_1^1AB^0
$$
**假设对$k\ge 1$成立**
$$
(A+B)^k=\sum\limits_{i=0}^kC_k^iA^iB^{k-i}
$$
**对k+1**
$$
\\\begin{align}
(A+B)^{k+1}=(A+B)^k(A+B)&=\sum\limits_{i=0}^kC_k^iA^iB^{k-i}(A+B)\\
&=\sum\limits_{i=0}^kC_k^iA^{i+1}B^{k-i}+
\sum\limits_{i=0}^kC_k^iA^iB^{k+1-i}\\
&=\sum\limits_{i=1}^{k+1}C_k^{i-1}A^{i}B^{k+1-i}+
\sum\limits_{i=0}^kC_k^iA^iB^{k+1-i}\\
&=C_k^0A^0B^{k+1}+\sum\limits_{i=1}^k(C_k^{i-1}+C_k^i)A^{i}B^{k+1-i}+
C_k^kA^{k+1}B^0\\
&=\sum_{i=0}^{k+1}C_{k+1}^iA^iB^{k+1-i}
\end{align}
\
$$
> 注:
>
> 想凑$\sum\limits_{i=0}^{k+1}C_{k+1}^iA^iB^{k+1-i}$
>
> 但指标不一致.
>
> 先统一$A^iB^{k+1-i}$,进行类似令j=i+1的操作,伪指标换回i.注意终点变成了k+1
>
> 再统一展开系数,想到$C_{k+1}^i=C_k^{i-1}+C_k^i$ (由杨辉三角记忆验证)
>
> 然后就顺理成章了.
>
> ==综上,当A与B可交换时,二项式才可正常展开.或者说二项式正常展开需要元素可交换.==

---

## 行列式计算技巧

### 交换

$$
\text{det}(E-AB)=\text{det}(E-BA)
$$

> 准确来说是$\text{det}(E_s-AB)=\text{det}(E_n-BA)$,其中A是sxn矩阵,B是nxs矩阵.

> *常用于*
> $$
> A=\begin{pmatrix}1\\1\\1\end{pmatrix}\quad B=\begin{pmatrix}1,1,1\end{pmatrix}
> \quad AB=\begin{pmatrix}1&1&1\\1&1&1\\1&1&1\end{pmatrix}\quad BA=3
> \\\text{det}(E-AB)=\text{det}(E-BA)=\text{det}(1-3)=-2
> $$

**证明:**
$$
\text{det}(E_s-AB)=
\text{det}\begin{pmatrix}E_s-AB&\\&E_n\end{pmatrix}=
\text{det}\begin{pmatrix}E_s&\\&E_n-BA\end{pmatrix}=
\text{det}(E_n-BA)
\\
\begin{pmatrix}E_s-AB&\\&E_n\end{pmatrix}
\xleftarrow[(1)-(2)B]{(1)-A(2)}
\begin{pmatrix}E_s&A_{s\times n}\\B_{n\times s}&E_n\end{pmatrix}
\xrightarrow[(2)-(1)A]{(2)-B(1)}
\begin{pmatrix}E_s&\\&E_n-BA\end{pmatrix}
$$

> 注:
>
> 难点其实就是明晰尺寸.
>
> **补充:**
> $$
> (E_s-AB)^{-1}=K_s=E_s+AK_nB\\(E_n-BA)^{-1}=K_n=E_n+BK_sA
> $$
> **证明:**利用等式,取逆,对应位置得到新等式($K_s和K_n$分别代表它们的逆)
>
> > 暂时我还不知道证明理解这个补充,也不知道如何用,证明过程就是大量的分块矩阵计算,如果A,B可逆这个结论还有点用,不可逆不就一无是处了吗?
>
> 

### 分块方阵

$$
方阵\begin{pmatrix}A&B\\C&D\end{pmatrix}
$$

**A可逆或D可逆**
$$
\text{det}\begin{pmatrix}A&B\\C&D\end{pmatrix}=\begin{cases}\text{det}A\cdot\text{det}(D-CA^{-1}B)&A可逆\\\text{det}D\cdot\text{det}(A-BD^{-1}C)&D可逆\end{cases}
$$
**证明:**
$$
利用可逆化成上三角或者下三角(消B或者C)(消的过程不唯一,此处就不展开了)
\\再由\text{det}(AB)=\text{det}A\cdot\text{det}B\quad得证
$$

> $$
> \text{det}\begin{pmatrix}A&\\&D\end{pmatrix}=\text{det}A\cdot\text{det}D
> $$
>
> 我们在做的就是减去B,C的干扰.

**A不可逆或D不可逆**

例如
$$
采用扰动法或者摄动法
$$


## 求逆矩阵

$$
\text{det}A\cdot\text{det}A^{-1}=1或\text{det}A^{-1}=\frac{1}{\text{det}A}
$$

**证明:**
$$
AA^{-1}=E
\\\text{det}(AA^{-1})=\text{det}A\cdot\text{det}A^{-1}=\text{det}E=1
\\所以\text{det}A^{-1}=\frac{1}{\text{det}A}
$$

> A可逆则$\text{det}A\ne0$,所以可以进一步除过去
>
> 逆与倒数的统一

$$
A可逆则\text{det}A\ne0
$$

**证明:**
$$

$$

## 矩阵秩不等式

$$
rank\begin{pmatrix}A&\\&B\end{pmatrix}=rankA+rankB
\\rank\begin{pmatrix}A&C\\&B\end{pmatrix}\ge rankA+rankB
$$

**证明:**
$$
rank\begin{pmatrix}PQ&\\&B\end{pmatrix}=rankA+rankB
$$


## 相抵

$$
A=P\begin{pmatrix}E_r&O\\O&O\end{pmatrix}Q
$$

​	**引理:**

**证明:**
$$
rankA=n
\\A=P_1\cdots P_iE_nQ_1\cdots Q_{j}=P_1\cdots P_iQ_1\cdots Q_{j}
$$

---

Remark
$$
\begin{align}
&相抵标准型:基于初等变换-秩
\\&相似标准型:基于特征值
\\&合同标准型:基于二次型
\end{align}
$$
