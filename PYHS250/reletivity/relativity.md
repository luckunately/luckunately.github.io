# Relativity

**Speed of light is _INDEPENDENT_ of the motion of the source**

## Coordinate System

Let 
- $S$ be a frame with origin $O$ for coordinate $x$ and time $t$
- $S'$ be a frame with origin $O'$ for coordinate $x'$ and time $t'$
- $S'$ is moving with velocity $u$ with respect to $S$ in $x$ direction as what $S$ **sees**
- Assume $O = O'$ at $t = t' = 0$

### Galilean Transformation

Conventionally, we are used to 
$$
x' = x - ut \space\space\space\space\space t' = t
$$
where $u$ is the velocity of $S'$ with respect to $S$

This is called **Galilean Transformation**. It is valid for low speeds. But it is not valid for high speeds since it violates the **speed of light** principle. This equation would state that speed of light is frame-dependent.

### Lorentz Transformation

#### A new time transformation
Now try a time transformation that depends on position and velocity
$$
x' = x - ut \\
t' = t - ux/c^2
$$

Now derive it by creating a light pulse in $S$ at $t_1=x_1=0$ and absorbed at $t_2=T, x_2=cT$
$$
x_1' = 0 \space\space\space\space\space x_2' = x_2 - ut_2 = cT - uT = (c - u)T \\
t_1' = 0 \space\space\space\space\space t_2' = t_2 - ux_2/c^2 = T - u(cT)/c^2 = (1 - u/c)T
$$

Now find the velocity of light in $S'$
$$
V' = \frac{x_2' - x_1'}{t_2' - t_1'} = \frac{(c - u)T}{(1 - u/c)T} = \frac{c - u}{1 - u/c} = c
$$

Now the transformation keeps the speed of light constant.

Actually this property should hold for all kind of function of velocity as long as the **same** function appears for both of them:
$$
x' = x - ut \cdot f(u) \\
t' = t - ux/c^2 \cdot f(u)
$$
Of course we need $f(u = 0) = 1$ so that the transformation does nothing when $u = 0$