$$
可逆\Leftrightarrow无关\Leftrightarrow满秩\Leftrightarrow行列式非零
$$

$$
AA^{-1}=A^{-1}A=E
\\对A的行线性组合或列线性组合,得到无关的E--无关
\\
\\行列式非零--无关,无关则本身就是极大--满秩
$$

> 前置知识:
>
> 1. 



线性相关与线性无关

> 1. 相关—某一个能被表出
> 2. 相关—能被更少的表出
> 3. 无关—不能被更少的表出
> 4. 无关,加一个相关—所加的能被表出
> 5. 可扩
> 6. 



齐次线性方程解的情况

> 未知数—方程个数
>
> 未知数大于方程个数:有非零解—线性相关



# 2

## 解的结构

### 齐次

$$
线性相关\Rightarrow非零解
$$

#### **解空间**
$$
设\eta_1=(\lambda_1,\cdots,\lambda_n)^T,\eta_2=(\mu_1,\cdots,\lambda_n)^T是齐次线性方程组的解
\\
\begin{cases}
\lambda_1\alpha_1+\cdots+\lambda_n\alpha_n=0\\
\mu_1\alpha_1+\cdots+\mu_n\alpha_n=0
\end{cases}
\Rightarrow加法数乘封闭,构成解空间(本身有零解)
$$

#### **基础解系**
$$
简化行阶梯(r个主元,n-r个自由)\xRightarrow{重排x}\begin{pmatrix}x_{j_1}\\\vdots\\x_{j_{r}}\\x_{j_{r+1}}\\\vdots\\x_{j_{n}}\end{pmatrix}=x_{j_{r+1}}\eta_{r+1}+\cdots x_{j_n}\eta_n
\\投影无关所以\eta_{r+1}\cdots\eta_{n}无关,构成基础解系(无关且表出)
$$

##### ==Note==

由此我们学会了求任意齐次线性方程组的解(系).

重排不唯一所以解系不唯一.

### 有非零解就有无穷多组解.

