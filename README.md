# Towards-Unconditional-Uncloneable-Encryption

## Associated Manuscript

This GitHub page is associated to the following manuscript 
- <b>Manuscript:</b> [&#128195; Towards-Unconditional-Uncloneable-Encryption] (todo)
- <b>Authors:</b> 
[&#128100; Pierre Botteron](https://pierre-botteron.github.io/), 
[&#128100; Anne Broadbent](https://mysite.science.uottawa.ca/abroadbe/), 
[&#128100; Eric Culf](https://uwaterloo.ca/institute-for-quantum-computing/contacts/eric-culf), 
[&#128100; Ion Nechita](https://ion.nechita.net/about/),
[&#128100; Clément Pellegrini](https://www.math.univ-toulouse.fr/~pellegri/), and 
[&#128100; Denis Rochette](https://www.denisrochette.net).

## Content

```bash
./
|__ conjecture/: Core of package. 
|  |-- `NPA1.m`: Matlab package of the npa hierarchy level 1 of Section 4.2 of the paper.
|  |-- `NPA2.m`: Matlab package of the npa hierarchy level 2 of Section 4.3 of the paper.
|  |-- `seesaw.nb`: Mathematica package of the seesaw method of Section 4.4 of the paper.
|-- `README.md`: This file.
```

## No-cloning game for a 1-bit message

<p align="center">
  <img width="600" alt="no-cloning game for a 1-bit message" src="https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/images/no-cloning-game.png">
</p>

Alice encrypts a uniformly random message $m \in \\{0,1\\}$ using key $k$, into a quantum state $\rho_{m,k}$. She transmits it to a Pirate modeled by a CPTP map $\Phi: \mathcal{B} ( \mathcal{H}\_A ) \to \mathcal{B} ( \mathcal{H}\_B \otimes \mathcal{H}\_C )$. Bob and Charlie are then given the registers for $\mathcal{H}\_{B}$ and $\mathcal{H}\_C$, respectively, as well as a copy of $k$. They  output $m_{B}$, $m_{C} \in \\{0, 1\\}$, respectively, and *win* if and only if $m = m_B = m_C$. *Uncloneable-Indistinguishability* holds if the winning probability is bounded by $1/2 + \text{negl}(\lambda)$ for $\lambda$ some security parameter.

## No-cloning game for a 1-bit message

<p align="center">
  <img width="600" alt="no-cloning game for a 1-bit message" src="https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/images/no-cloning-game.png">
</p>

## Reference

```bibtex
todo
```
