## Contents

- [Definition](#Definition) 级数,部分和,收敛,绝对收敛
- [Theorem](#Theorem) 收敛准则,非负收敛准则,比较定理,柯西&达朗
- [Proof](#Proof)
- [Examples](#Examples) 几何,调和,交错,p-级数,裂项
- [Remarks](#Remarks) 1理解,1技巧
- [Related Topics](#related-topics) 上极限

---

## Definition

**Def. 1.1** 级数: $a_1+\cdots$ 记作 $\sum_{n=1}^\infty a_n$ 或 $\sum a_n$ (不加说明默认从$n=1$开始)

**Def. 1.2** 部分和: $s_n=\sum a_k$

**Def. 1.3** 级数收敛与否取决于部分和序列是否收敛

**Def. 2.1** 绝对收敛: $\sum|a_n|$ 收敛

---

## Theorem

**Thm. 1** 级数收敛 $\Leftrightarrow$ $\forall \varepsilon>0,\exists N,对\forall m\ge n>N:|a_n+\cdots+a_m|<\varepsilon$

+ **Cor. 1** 改变有限项不影响
+ **Cor. 2** 收敛必要性: $\lim a_n=0$ 

**Thm. 2** 非负级数收敛 $\Leftrightarrow$ 部分和序列有上界

**Thm. 3** (比较定理)$\exists N,对\forall n>N:a_n\le b_n(都是非负级数)$ 则
$$
\sum a_n发散则\sum b_n发散,\sum b_n收敛则\sum a_n收敛
$$
以下不要求级数非负

+ **Cor. 1** (绝对比较)$|a_n|\le b_n$ 得$\sum a_n$绝对收敛

+ **Cor. 2** (柯西)$\alpha = \overline\lim\sqrt[n]{|a_n|}$

+ **Cor. 3** (达朗)$\alpha=\lim|\frac{a_{n+1}}{a_{n}}|$ 

$$
\begin{cases}\alpha<1&绝对收敛\\\alpha=1&不定\\\alpha>1&发散\end{cases}
$$

---

## Proof

$$
\begin{align}
&Thm.1\ 对部分和序列用柯西收敛准则(充要)得到.
\\&Cor.1\ 在Thm.1中令N足够大,大于所改变项的最大下标即可.
\\&Cor.2\ 要么令m=n,要么a_n=s_n-s_{n-1}.
\\\\
&Thm.2\ 对部分和序列用单调有界有极限(收敛肯定有界).

\\&Thm.3\ 不能从无界(发散\ne无界).有限项不影响,看成恒有a_n\le b_n\Rightarrow A_n\le B_n\le B.用反证法推发散.
\\&Cor.1\ 虽不要求非负,有限项不影响可得到非负\sum b_n(0\le|a_n|\le b_n),所以可用Thm.3,得到绝对收敛.

\\&Cor.2\ \begin{cases}\alpha<1&\exists \alpha<q<1,会有\sqrt[n]{|a_n|}<q\ (\exists N,但有限项),所以|a_n|<q^n,用Thm.3\\\alpha>1&\exists \alpha>q>1,\exists子列\{\sqrt[n_k]{|a_{n_k}|}\}\to\alpha,即\sqrt[n_k]{|a_{n_k}|}>q(\exists K,同理),同理\\\alpha=1&都有可能,例子为发散的\frac{1}{n}和收敛的\frac{1}{n^2}\end{cases}
\\&Cor.3\ \begin{cases}\alpha<1&|\frac{a_{n+1}}{a_n}|<q(\exists N,同理),|a_{n}|=|\frac{a_{n}}{a_{n-1}}|\cdots|\frac{a_{2}}{a_1}||a_1|< |a_1|q^n\\\alpha>1&|\frac{a_{n+1}}{a_n}|>q>1(\exist N),绝对值代表距离,|a_{n+1}|>|a_n|则数列与0越来越远,不满足必要.\\\alpha=1&同样例子\end{cases}
\end{align}
$$

---

## Examples

**Example 1** 几何级数$\sum q^{n-1}$

**Example 2** 调和级数$\sum \frac{1}{n}$

**Example 3** 交错级数$\sum (-1)^{n-1}$

**Example 4 ** p-级数$\sum \frac{1}{n^p}$

**Example 5** $\frac{1}{n(n+1)}<\frac{1}{n^2}<\frac{1}{(n-1)n}$

---

## Remarks

- 绝对收敛和条件收敛可以看成对收敛的进一步分类,或者说绝对收敛更苛刻

$$
\\
绝对收敛可推收敛:
\\绝对收敛则\lim|a_n|=0,i.e.\forall\varepsilon>0,\exists N,\forall n>N:|a_n|<\varepsilon
\\由柯西收敛准则和绝对值不等式,|a_n+\cdots+a_m|\le|a_n|+\cdots+|a_m|<\varepsilon
\\\\条件收敛的定义要求收敛,或者说条件收敛就是普通收敛
$$

+ $\frac{1}{2}<\frac{1}{n+1}+\frac{1}{n+2}+\cdots+\frac{1}{2n}<1$或者$\frac{1}{2^p}\cdot\frac{1}{n^\sigma}<\frac{1}{(n+1)^p}+\frac{1}{(n+2)^p}+\cdots+\frac{1}{(2n)^p}<\frac{1}{n^\sigma}(\sigma=p-1)$

---

## Related Topics

+ 上极限