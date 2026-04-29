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
> 综上,当A与B可交换时,二项式可正常展开.或者说二项式正常展开需要元素可交换.

---

