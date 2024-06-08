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

### Hamiltonian Operator

The energy operator is also called the Hamiltonian operator. It is the sum of the kinetic energy operator and the potential energy operator. The kinetic energy operator is $-\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2}$ and the potential energy operator is $V(x)$.

$$
H_{\text{op}} = -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + V(x)
$$


## Wave transmission

Consider a wave function $\psi_1 = e^{i(kx - \omega t)}$ (Amplitude is 1) on the left side of a barrier where the potential energy $V(x) = 0 \atop x < 0$ and $V(x) = V \atop x \geq 0$. 

![potential impluse](Potential_implse.jpg)

We know $p= \sqrt{2mE}$ and $p = \hbar k$. So $k = \sqrt{2mE}/\hbar = p/\hbar$.

There is a reflected wave with unknown amplitude $R$ with **opposite** direction (momentum sign reversed with the same value) and a transmitted wave with unknown amplitude $T$ with **same** direction. 

All three waves have the same frequency $\omega$ and wave number $k$.

The wave function on the right side of the barrier is $\psi_2 = Re^{i(-kx - \omega t)} + Te^{i(k'x - \omega t)}$.


### Time Independent solution

Since the time-dependence is the same, the energy $E=\hbar \omega$ is the same. With the $\psi$ listed:

$$
\begin{align*}
\psi_1 &= e^{i(kx - \omega t)} && \psi_R = Re^{i(-kx - \omega t)} && \psi_T = Te^{i(k'x - \omega t)} 
\end{align*}
$$

Use the Schrodinger equation to get $k'$:

$$
\begin{align*}
E \psi_T &= -\frac{\hbar^2}{2m} \frac{\partial^2 \psi_T}{\partial x^2} + V \psi_T \\
(E-V) T e^{ik'x} &= -\frac{\hbar^2}{2m} (ik')^2 T e^{ik'x} \\
E-V &= \frac{\hbar^2 k'^2}{2m} \\
k' &= \sqrt{\frac{2m(E-V)}{\hbar^2}} = \frac{\sqrt{2mc^2(E-V)}}{\hbar c}
\end{align*}
$$

One boundary condition is that the **sum** of the incident and reflected waves must be equal to the transmitted wave function at the boundary ($x=0$):

$$
\begin{align*}
\psi_1 + \psi_R &= \psi_T \\
e^{i(k0)} + Re^{i(-k0)} &= Te^{i(k'0)} \\
1 + R &= T
\end{align*}
$$

The other boundary condition is that the **derivative** of the sum of the incident and reflected waves must be equal to the derivative of the transmitted wave function at the boundary ($x=0$):

$$
\begin{align*}
\frac{\partial}{\partial x}(\psi_1 + \psi_R) &= \frac{\partial}{\partial x} \psi_T \\
ik e^{i(k0)} - iRk e^{i(-k0)} &= ik' Te^{i(k'0)} \\
ik - iRk &= ik' T \\
k - Rk &= k' T
\end{align*}
$$

Solve the two equations to get:

$$
\begin{align*}
R &= \frac{k-k'}{k+k'} \\
T &= \frac{2k}{k+k'}
\end{align*}
$$

Now substitute $k' = \frac{\sqrt{2mc^2(E-V)}}{\hbar c}$ and $k = \frac{\sqrt{2mc^2E}}{\hbar c}$ to get:

$$
\begin{align*}
R &= \frac{\sqrt{E - \sqrt{E-V}}}{\sqrt{E-V} + \sqrt{E}} \\
T &= \frac{2\sqrt{E}}{\sqrt{E-V} + \sqrt{E}}
\end{align*}
$$

- If $V=0$, then $R=0$ and $T=1$. No reflection and full transmission.
- If $V=E$, then $R=1$ and $T=0$. Full reflection and no transmission.
- If $V < E$, then $R > 0$ and $T > 1$. There is reflection and transmission and transmission is greater than 1. This is called **tunneling**.
- If $V > E$, then we get imaginary $k'$ which is ok. The transmitted wave becomes a **real** exponential $\psi_T = Te^{-|k'| x}$
- If $V \to \infty$, then $\sqrt{E-V} \to i \infty$. It makes $R=-1$. The reflected wave has the same magnitude with the incident wave but opposite phase and direction. The transmitted wave has an amplitude of 0. The wave is **totally reflected**.
- If $V$ is slightly less then $E$ then $\sqrt{E-V}$ is small and $R$ is close to 1. The wave is **mostly reflected**. Note that it might get a large amplitude if $V$ is close to $E$, hence larger density of states. This is because we slowed down the particle a lot more, thus increasing the probability of finding the particle. If $V>>\infty$, the density can go to infinity at the boundary.

## Potential Barrier

![potential barrier](Potential_Barrier.png)

Suppose there is a well from $x\in[0,w]$ where potential energy is $V$ and 0 elsewhere. $V>E$. Besised the incident, reflected and transmitted waves, there also exists forward and backward waves inside the well.

Assuming no time dependence, the wave function is:

$$
\begin{align*}
\psi_1 &= e^{i(kx)} && \psi_R = Re^{i(-kx)} && \psi_T = Te^{i(kx)} && \psi_F = Fe^{i(k'x )} && \psi_B = Be^{i(-k'x)}
\end{align*} 
$$

There are two boundary conditions at $x=0$ and $x=w$:

### Sum up all the boundary conditions

$$
\begin{align*}
1+R&=F+B \impliedby \psi_1 + \psi_R = \psi_F + \psi_B \\
ik - iRk &= ik'F - iBk' \impliedby \frac{\partial}{\partial x}(\psi_1 + \psi_R) = \frac{\partial}{\partial x}(\psi_F + \psi_B) \\
Fe^{ik'w} + Be^{-ik'w} &= Te^{ikw} + Re^{-ikw} \impliedby \psi_F + \psi_B = \psi_T + \psi_R \\
ik'F e^{ik'w} - ik'B e^{-ik'w} &= ikT e^{ikw} \impliedby \frac{\partial}{\partial x}(\psi_F + \psi_B) = \frac{\partial}{\partial x}(\psi_T)
\end{align*}
$$

### Solve the equations using matrix

4 equations and 4 unknowns. Solve the equations to get:

$$
\begin{align*}
\begin{bmatrix}
-1 & 1 & 1 & 0 \\
k & k' & -k' & 0 \\
0 & e^{ik'w} & e^{-ik'w} & -e^{ikw} \\
0 & k'e^{ik'w} & -k'e^{-ik'w} & -k e^{ikw}
\end{bmatrix}
\begin{bmatrix}
R \\
F \\
B \\
T
\end{bmatrix}
&=
\begin{bmatrix}
1 \\
k \\
0 \\
0
\end{bmatrix}
\end{align*}
$$

Pick nice numbers like $k = 1, k' = 0.5, w = \pi$ to get $R = 0.6, F = 1.2, B = 0.4, T = -0.8i$.
- 60% reflection amplitude, 120% forward amplitude, 40% backward amplitude, 80% transmission amplitude.
- 36% reflection probability, 144% forward probability, 16% backward probability, 64% transmission probability.

If the barrier is higher than the energy, the $k'$ becomes imaginary and the wave function becomes a real exponential. The wave function decays exponentially inside the barrier. 

### Tunneling Approximation for Potential Barrier

Transmitted wave function can be approximated as:

$$
\psi_T = \frac{2k}{k+k'} \frac{2k'}{k+k'} e^{ik'w} e^{ik(x+w)}
$$

The transmission probability is:

$$
T\times T = \frac{4}{1+\frac{V-E}{V}} \frac{4}{1+\frac{E}{V-E}} \exp(-2\frac{\sqrt{2m(V-E)}}{\hbar}w)
$$

If $V>>E$, then the transmission probability is:

$$
P(w) = 16 \exp(-2\frac{\sqrt{2m(V-E)}}{\hbar}w)\frac{E}{V}(1-\frac{E}{V})
$$

## Infinite Square Well

Consider a potential energy $V=0$ for $0<x<L$ and $V=\infty$ elsewhere. The wave function is $\psi(x) = \sin(k_n x), k_n = \frac{n\pi}{w}, n\in\mathbb{N}$.

The energy is $E_n(w) = \frac{\hbar^2 k_n^2}{2m} = \frac{n^2 \pi^2 \hbar^2}{2mw^2}$.

## Finite Negative Square Well

Consider a potential energy $V=-V_0$ for $0<x<L$ and $V=0$ elsewhere. There is a large transmitted wave, a small reflected wave and complex exponential waves inside the well.

The energies are about $E_n(w) \approx -V + n^2 \pi^2 \hbar^2/2mw^2$.

## Quantum Harmonic Oscillator

The potential energy is $V = \frac{1}{2} k^2 x^2$. The Schrodinger equation with time independence is:

$$
E \psi = -\frac{\hbar^2}{2m} \frac{\partial^2 \psi}{\partial x^2} + \frac{1}{2} k^2 x^2 \psi
$$

At large enough $|x|$, $V>>E$ and we can drop $E\psi$ term. The equation becomes:

$$
-\frac{\hbar^2}{2m} \frac{\partial^2 \psi}{\partial x^2} + \frac{1}{2} k^2 x^2 \psi = 0
$$

![quantum harmonic oscillator](Harmonic_Oscillator.png)

