# Schrodinger 1D

Bohr's model gets lots of things right:
- quantization of energy levels
- predicts the Rydberg wavelength
- hydrogen atom size

But it also got a lot of things wrong:
- Wrong magnetic moment (angular momentum)
- Predicts that atoms are flat
- Does not extend to multi-electron atoms

Photons obey Maxwell's Equations, in particular, the wave equation:

$$
\nabla^2 E = \frac{1}{c^2} \frac{\partial^2 E}{\partial t^2}
$$

Maxwell's equations are filed equations: partial differential equations that involve both space and time. 

Schrodinger wanted to find a similar equation for matter waves. The Schrodinger equation is a wave equation that describes the behavior of matter waves. It is a partial differential equation that involves both space and time.

## Wave Equation Review

Wave equation $\frac{\partial^2 y}{\partial x^2} = \frac{1}{v^2} \frac{\partial^2 y}{\partial t^2}$ for $y(x,t)$. Second order in space and time. Velocity $v$ is the speed of the wave which is built into the equation.

Solution: $y(x,t) = f(x\pm vt)$ for any function $f$. Any linear combination of these solutions is also a solution.

Note that the solution **does not** need to be sinusoidal. But if it is sinusoidal, then it has a wavelength $\lambda$ with period $T$ where $v = \lambda/T$ that follows the following relationship:

$$
y(x,t) = A \sin(2\pi (\pm \frac{x}{\lambda} - \frac{t}{T}) + \phi)
$$

It is convenient to write the wave equation in terms of the wave number $k = 2\pi/\lambda$ and angular frequency $\omega = 2\pi/T = 2\pi f$:

$$
y(x,t) = A \sin(\pm kx - \omega t + \phi)
$$

The minus sign on $\omega t$ is to make sure the wave direction have the same sign as $k$. 

Note that $v = \lambda/T = \omega/k$.

## Schrodinger Equation

We want the equation to:
- obey de Broglie: $\lambda = h/p$ as electrons are proved to have wave-like properties by Davisson and Germer experiment
- have velocity built in since we know that electrons have various velocities
- obey Planck's relation: $E = hf = \hbar \omega$ where $\hbar = h/2\pi$
- not worry about relativistic effects since most electrons are non-relativistic and it is a lot easier to solve non-relativistic equations

So we have $p = \hbar k$ and $E = \hbar \omega$.

Define $\psi(x,t) = A e^{i(kx - \omega t)}$ where $A$ is a constant. The wave function $\psi(x,t)$ is a complex function. The real part of $\psi(x,t)$ is the wave function $y(x,t)$.

The Schrodinger equation is:

$$
i\hbar \frac{\partial \psi}{\partial t} = -\frac{\hbar^2}{2m} \nabla^2 \psi + V \psi
$$

where $\psi(x,t)$ is the wave function, similar to $y(x,t)$ $\nabla^2 \psi=\frac{\partial^2 \psi}{\partial x^2} + \frac{\partial^2 \psi}{\partial y^2} + \frac{\partial^2 \psi}{\partial z^2}$ is the Laplacian operator, $V$ is the potential energy, and $m$ is the mass of the particle.

In 1D, the Schrodinger equation is:

$$
i\hbar \frac{\partial \psi}{\partial t} = -\frac{\hbar^2}{2m} \frac{\partial^2 \psi}{\partial x^2} + V \psi
$$

### Linearity of Schrodinger Equation

The Schrodinger equation is linear. If $\psi_1$ and $\psi_2$ are solutions, then $\psi = c_1 \psi_1 + c_2 \psi_2$ is also a solution.

### The Operator concept

A **function** takes a number as input and outputs a number.

An **operator** takes a function as input and outputs a function.

An example would be $\frac{d}{dx}$ which takes a function $f(x)$ and outputs a function $\frac{df}{dx}$.

#### Momentum Operator

- Define $p_{\text{op}} = \frac{\hbar}{i} \frac{\partial}{\partial x}$.
- Apply $p_{\text{op}}$ twice to get $p_{\text{op}}^2 = -\hbar^2 \frac{\partial^2}{\partial x^2}$.
- Rewrite the Schrodinger equation as $i\hbar \frac{\partial \psi}{\partial t} = -\frac{\hbar^2}{2m} \frac{\partial^2 \psi}{\partial x^2} + V \psi$ = $i\hbar \frac{\partial \psi}{\partial t} = \frac{p_{\text{op}}^2}{2m} \psi + V \psi$.
- $p_{\text{op}}\psi = \hbar k \psi$ where $k$ is the wave number. We know that $k = 2\pi/\lambda$ and $\lambda = h/p$. Not hard to show that $p_{\text{op}} = \hbar k$. Thus it is the momentum operator.

### Complex to Real

The complex conjugate of $z = a + bi$ is $z^* = a - bi$. Note that $z z^* = a^2 + b^2$. It is real and never negative. The Schrodinger equation is complex, but the probability of finding a particle is real and never negative.

It turns out that the probability density of finding a particle is $|\psi|^2 = \psi \psi^*$.

The current density of x-component is $j_x = \frac{\hbar}{2mi} (\psi^* \frac{\partial \psi}{\partial x} - \psi \frac{\partial \psi^*}{\partial x})$.

### Fourier Analysis

For N discrete data samples $x_j$, the transform $X_k$ is:

$$
X_k = \sum_{j=0}^{N-1} x_j e^{-2\pi i j k/N}
$$

where $j,k$ are indicues and $i$ is the imaginary unit. The inverse transform is:

$$
x_j = \frac{1}{N} \sum_{k=0}^{N-1} X_k e^{2\pi i j k/N}
$$

The continuous version is:

$$
S(f) = \int_{-\infty}^{\infty} s(t) e^{-2\pi i f t} dt
$$

$$
s(t) = \int_{-\infty}^{\infty} S(f) e^{2\pi i f t} df
$$

In the quantum world:

$$ 
y(x) = \int_{-\infty}^{\infty} a(k)e^{ikx} dk
$$

$$
a(k') = \frac{1}{2\pi}\int_{-\infty}^{\infty} y(x)e^{-ik'x} dx
$$

## Heishenberg Uncertainty Principle

Consider 

$$a(k) = \frac{1}{\sqrt{2} \sigma_k} e^{-\frac{(k)^2}{2\sigma_k^2}}
$$ 

A properly normalized Gaussian in k-space, centered on $k=0$ and width $\sigma_k = 1/\sigma_x$.

Heisenberg says that $\sigma_x \sigma_p \geq \hbar/2$ where $\sigma_p$ is the width of the Gaussian in p-space.

The more localized the wave function in x-space, the more spread out it is in p-space. We can never know both the position and momentum of a particle with arbitrary precision.

Same goes for energy and time: $\sigma_E \sigma_t \geq \hbar/2$. If we know how long a process takes, we can't know the energy of the process with arbitrary precision. Vice versa.

The reason is that the position and momentum operators do not commute: $[x,p] = xp - px = i\hbar$. And they are conjugates of each other: $p = -i\hbar \frac{\partial}{\partial x}$. So if we know the position, we can't know the momentum and vice versa.

## Force and Potential Energy

The force is the negative gradient of the potential energy: $F = -\nabla V$. The potential energy is the integral of the force: $V = -\int F dx$.

### Step Potential

????

## Separation of Schrodinger Equation

Let $\psi(x,t) = f(x) g(t)$. Substitute into the Schrodinger equation to get:

$$
i\hbar \frac{1}{g} \frac{\partial g}{\partial t} = -\frac{\hbar^2}{2m} \frac{1}{f} \frac{\partial^2 f}{\partial x^2} + V
$$

Let $E = i\hbar \frac{1}{g} \frac{\partial g}{\partial t}$ and $E = -\frac{\hbar^2}{2m} \frac{1}{f} \frac{\partial^2 f}{\partial x^2} + V$. We get two equations:

$$
\begin{align*}
g(t) &= C' e^{-iEt/\hbar} && C' = \text{constant} \\
E f(x) &= -\frac{\hbar^2}{2m} \frac{\partial^2 f(x)}{\partial x^2} + V(x) f(x)
\end{align*}
$$

$E$ is the eigenvalue of the energy operator. $f(x)$ is the eigenfunction of the energy operator. The energy operator is $-\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + V(x)$.