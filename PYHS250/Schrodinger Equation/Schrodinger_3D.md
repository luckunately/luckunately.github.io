# Schrodigner Equation in 3D

$$
\begin{align*}
i\hbar \frac{\partial }{\partial t}\psi(x,y,z,t) &= -\frac{\hbar^2}{2m} \nabla^2 \psi(x,y,z,t) + V(x,y,z,t) \psi(x,y,z,t)\\
i\hbar \frac{\partial }{\partial t}\psi(\vec{x},t) &= -\frac{\hbar^2}{2m} \nabla^2 \psi(\vec{x},t) + V(\vec{x},t) \psi(\vec{x},t)
\end{align*}
$$

Make time-independent:

$$
\begin{align*}
\frac{-\hbar^2}{2m} \frac{\nabla^2 f(\vec{x})}{f(\vec{x})} + V(\vec{x}) &= E\\
\frac{-\hbar^2}{2m} \nabla^2 f(\vec{x}) + V(\vec{x}) f(\vec{x}) &= E f(\vec{x})\\
\frac{-\hbar^2}{2m} \nabla^2 \psi(\vec{x}) + V(\vec{x}) \psi(\vec{x}) &= E \psi(\vec{x})
\end{align*}
$$

## Particle in 3D Box

Assume $V(\vec{x}) = 0$ for $0 < x < a$, $0 < y < b$, $0 < z < c$, otherwise $\infty$.

Solve for the time-independent Schrodinger equation:

$$
\psi(\vec{x}) = A \sin(k_x x) \sin(k_y y) \sin(k_z z)
$$

At the boundaries

$$
\begin{align*}
x=a &\impliedby k_x = \frac{n_x \pi}{a}\\
y=b &\impliedby k_y = \frac{n_y \pi}{b}\\
z=c &\impliedby k_z = \frac{n_z \pi}{c}
\end{align*}
$$

Thus we get the energy levels:

$$
E = \frac{\hbar^2 \pi^2}{2m} \left( \frac{n_x^2}{a^2} + \frac{n_y^2}{b^2} + \frac{n_z^2}{c^2} \right)
$$

### Cubical Box

