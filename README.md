# Towards-Unconditional-Uncloneable-Encryption

## Associated Manuscript

This GitHub page is associated to the following manuscript: 
- <b>Manuscript:</b> [&#128195; Towards Unconditional Uncloneable Encryption](https://arxiv.org/abs/2410.23064)
- <b>Authors:</b> 
[&#128100; Pierre Botteron](https://pierre-botteron.github.io/), 
[&#128100; Anne Broadbent](https://mysite.science.uottawa.ca/abroadbe/), 
[&#128100; Eric Culf](https://uwaterloo.ca/institute-for-quantum-computing/contacts/eric-culf), 
[&#128100; Ion Nechita](https://ion.nechita.net/about/),
[&#128100; Clément Pellegrini](https://perso.math.univ-toulouse.fr/pellegrini/), and 
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

## No-Cloning Game for a 1-bit Message

<p align="center">
  <img width="600" alt="no-cloning game for a 1-bit message" src="https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/images/no-cloning-game.png">
</p>

Alice encrypts a uniformly random message $m \in \\{0,1\\}$ using key $k$, into a quantum state $\rho_{m,k}$. She transmits it to a Pirate modeled by a CPTP map $\Phi: \mathcal{B} ( \mathcal{H}\_A ) \to \mathcal{B} ( \mathcal{H}\_B \otimes \mathcal{H}\_C )$. Bob and Charlie are then given the registers for $\mathcal{H}\_{B}$ and $\mathcal{H}\_C$, respectively, as well as a copy of $k$. They  output $m_{B}$, $m_{C} \in \\{0, 1\\}$, respectively, and *win* if and only if $m = m_B = m_C$. *Uncloneable-Indistinguishability* holds if the winning probability is bounded by $1/2 + \text{negl}(\lambda)$ for $\lambda$ some security parameter.

## Conjecture

<p align="center">
  <img width="600" alt="no-cloning game for a 1-bit message" src="https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/images/conjecture.png">
</p>

Upper bounds on the winning probability in the no-cloning game involving three adversaries $(P, B, C)$ for our candidate scheme for Uncloneable Encryption with $K$ keys. The solid line (red) is the conjectured upper bound, the dashed line (cyan) corresponds to the upper bound derived from [NPA level 1](https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/conjecture/NPA1.m), the circles (teal) are the numerical upper bounds obtained from [NPA level 2](https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/conjecture/NPA2.m), and the square (black) is the numerical result obtained using the [seesaw optimization method](https://github.com/denis-rochette/Towards-Unconditional-Uncloneable-Encryption/blob/main/conjecture/seesaw.nb) on $K=18$.

## Reference

```bibtex
@misc{https://doi.org/10.48550/arxiv.2410.23064,
  doi = {10.48550/ARXIV.2410.23064},
  url = {https://arxiv.org/abs/2410.23064},
  author = {Botteron, Pierre and Broadbent, Anne and Culf, Eric and Nechita, Ion and Pellegrini, Clément and Rochette, Denis},
  title = {Towards Unconditional Uncloneable Encryption},
  publisher = {arXiv},
  year = {2024},
}
```
