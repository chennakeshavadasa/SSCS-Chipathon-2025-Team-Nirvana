# Chipathon-Nirvana
Mosbius work by team **Nirvana** for Chipathon 2025

<div align="justify">

<h3><strong>Project Introduction: Reconfigurable Fully Differential Ring Amplifier with Deadzone Regulation Circuit for Educational and RF-Mixed-Signal Applications</strong></h3>

<p>
Dynamic amplifiers, particularly <em>Ring Amplifiers(RAMP)</em>, have emerged as compelling alternatives to traditional small-signal operational amplifiers due to their high-speed and energy-efficient characteristics. Originally proposed by <strong>Benjamin Hershberg</strong> at <strong>Oregon State University (OSU)</strong>, ring amplifiers offer an innovative solution for high-performance analog blocks, especially in pipelined ADCs and filter circuits.
</p>

<p>
Our project aims to design and develop a <strong>reconfigurable ring amplifier</strong> optimized for <strong>educational use and mixed-signal system integration</strong>. The central focus is on <strong>enabling user-driven exploration and understanding</strong> of dynamic amplifier behavior—including large-signal dynamics, deadzone effects, and the transition into small-signal operation.
</p>

<p>
To support this, we incorporate a <strong>dedicated deadzone regulation circuit</strong>, based on the work of <strong>Dr. Praveen Kumar Venkatachala (Ph.D., OSU)</strong>. This circuit enables <strong>fine-grained control</strong> over the ring amplifier’s transition between nonlinear and linear operating regions. It provides a <strong>PVT-robust mechanism</strong> to configure the deadzone required for placing the ring amplifier into small-signal mode.
</p>

<p>
Additionally, users can <strong>manually vary the deadzone</strong> to explore the amplifier’s behavior across different deadzone widths. This tunability makes the implementation highly versatile, supporting a wide range of use cases including <strong>discrete-time pipeline ADCs</strong>, <strong>two-step SAR ADCs</strong>, <strong>analog filters</strong>, <strong>LDOs</strong>, and also serving as a platform to <strong>study the behavior of dynamic amplifiers</strong>.
</p>

</div>


By this work we intend to bridge theoretical concepts with practical design, our Mosbius Chip makes dynamic amplifier behavior more accessible for learning analog and mixed-signal design.

##  Team

- **Faiz Kurniawan** — *Team Lead and Layout*
- **Nithin P** — *Design and Architecture*
- **Kelton Eckert** — *Design of Building Blocks*
- **Kandias Wardhana** — *Layout*
- **Amit Kumar Sharma** — *Design of Building Blocks*


## Specification

- **Bandwidth**: *50MHz*
- **Load Capacitor**: *250pF*
- **Transient settling**: *≤50nsec*
- **VDD**: *3.3V*

## Architecture 

![image](https://github.com/user-attachments/assets/c726fec0-d34c-4653-8ce3-b20450774148)

## Pin-Out Diagram

| Pin Name       | Direction | Type        | Description                                                                 |
|----------------|-----------|-------------|-----------------------------------------------------------------------------|
| `VIN_PLUS`     | Input     | Analog      | Positive input to Ring Amplifier                                            |
| `VIN_MINUS`    | Input     | Analog      | Negative input to Ring Amplifier                                            |
| `VSTG1_P`      | Output    | Analog      | Output of first stage of Ring Amplifier (positive branch)                   |
| `VSTG1_N`      | Output    | Analog      | Output of first stage of Ring Amplifier (negative branch)                   |
| `VCTRL_P`      | Input     | Analog      | Deadzone voltage for current-starved inverters (PMOS path)                  |
| `VCTRL_N`      | Input     | Analog      | Deadzone voltage for current-starved inverters (NMOS path)                  |
| `VCTRLP_RG`    | Output    | Analog      | Process-invariant PMOS bias from deadzone regulation circuit                |
| `VCTRLN_RG`    | Output    | Analog      | Process-invariant NMOS bias from deadzone regulation circuit                |
| `VGP`          | Input     | Analog      | Gate voltage for third stage PMOS                                           |
| `VGN`          | Input     | Analog      | Gate voltage for third stage NMOS                                           |
| `VDD`          | Power     | Supply      | Positive power supply (typically 3.3V)                                      |
| `GND`          | Power     | Ground      | Ground / reference voltage                                                  |
| `VOUT_PLUS`    | Output    | Analog      | Positive output of Ring Amplifier                                           |
| `VOUT_MINUS`   | Output    | Analog      | Negative output of Ring Amplifier                                           |


---

# User Cases

## Discrete-Time Pipeline ADC

A pipelined ADC architecture leveraging discrete-time operation and ring amplifiers for high-speed, energy-efficient performance can be implemented. This is based on the work by Benjamin Hershberg et al.,

#### Architecture Overview

<div align="center">
  <img src="https://github.com/user-attachments/assets/10b8f2e8-c285-4ea6-bb7e-216b159cc5ff" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

- Stage 1 MDAC
<div align="center">
  <img src="https://github.com/user-attachments/assets/83d97ddb-7b1b-4b76-bcf0-51ca56521398" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

- Stage 2-4 MDAC
<div align="center">
  <img src="https://github.com/user-attachments/assets/2c992243-84f7-4293-9957-e8dc80d0ba30" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

- Stage 5-6 MDAC
<div align="center">
  <img src="https://github.com/user-attachments/assets/229b39be-7e93-44a5-a0e1-ae7278fe69fb" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

- The Fully differential ampifier and single ended amplifier can also be replaced with our fully differential Ring Amplifier

#### Reference

> B. Hershberg, S. Weaver, K. Sobue, S. Takeuchi, K. Hamashita and U.-K. Moon,  
> “Ring Amplifiers for Switched Capacitor Circuits,”  
> *IEEE Journal of Solid-State Circuits*, vol. 47, no. 12, pp. 2928–2942, Dec. 2012.  
> [DOI: 10.1109/JSSC.2012.2217865](https://doi.org/10.1109/JSSC.2012.2217865)


---

## Two-Step SAR ADCs

This section demonstrates the use of a **Ring Amplifier** as a residue amplifier in a two-step Successive Approximation Register (SAR) ADC architecture.

<div align="center">
  <img src="https://github.com/user-attachments/assets/3b47dfbb-7342-4c47-8af7-f9784aaee666" alt="Two-Step SAR ADC Block Diagram" width="600"/>
</div>

The two-step SAR ADC shown above consists of a 9-bit first stage (STG1) and a 13-bit second stage (STG2), with an interstage gain of 64× provided by the **residue amplifier (RA)** implemented using a ring amplifier. The first 4 MSBs of STG1 are resolved by a coarse flash ADC, enabling efficient high-resolution conversion with reduced power.

#### Reference

> Ahmed ElShater, Praveen Kumar Venkatachala, Calvin Yoji Lee, Jason Muhlestein, Spencer Leuenberger, and Kazuki Sobue,  
> “A 10-mW 16-b 15-MS/s Two-Step SAR ADC With 95-dB DR Using Dual-Deadzone Ring Amplifier,”  
> *IEEE Journal of Solid-State Circuits*, vol. 54, no. 12, pp. 3410–3420, Dec. 2019.  
> [DOI: 10.1109/JSSC.2019.2943935](https://doi.org/10.1109/JSSC.2019.2943935)

---

## Ring Amplifier Based Switched-Capacitor Amplifiers and Filters

Exploring the use of Fully differential Ring amplifier, which provides the benefits of high gain, fast slew based charging and an almost rail-to-rail output swing. We implement a switched-capacitor (SC) inter-stage residue amplifier that uses this new fully differential ring amplifier to give accurate amplification.

### Differential Unity-Gain Sampler Using RAMP

<div align="center">
  <img src="https://github.com/user-attachments/assets/b847ff1e-d291-4cab-8e97-de6940252795" alt="Differential Unity-Gain Sampler" width="600"/>
</div>

### Non-Inverting Amplifier Using RAMP

<div align="center">
  <img src="https://github.com/user-attachments/assets/ad677013-4c59-4c12-bb17-d2f6b7c65124" alt="Non-Inverting Amplifier" width="600"/>
</div>

### Differential Non-Inverting Amplifier Using RAMP

<div align="center">
  <img src="https://github.com/user-attachments/assets/d2043116-2fe8-4f03-ad20-b9a0cf74820a" alt="Differential Non-Inverting Amplifier" width="600"/>
</div>

### Discrete-Time Integrator Using RAMP

<div align="center">
  <img src="https://github.com/user-attachments/assets/48091541-6ab7-469e-972f-f898f51ec9f1" alt="Discrete-Time Integrator" width="600"/>
</div>

### References

> B. Razavi,  
> *Design of Analog Integrated Circuits*, Chapter 12: Switched-Capacitor Circuits,  
> [UCLA Course Notes (PDF)](https://www.seas.ucla.edu/brweb/teaching/AIC_Ch12.pdf)

---

##  Ring Amplifier Based LDO

An LDO architecture using a ring amplifier with deadzone regulation is presented, which eliminates the need for traditional frequency compensation. This design is based on the work by P. K. Venkatachala et al. The RAMP-based LDO is more power-efficient compared to conventional small-signal amplifier-based LDOs. This efficiency arises from the ring amplifier’s unique settling behavior, which occurs in three phases: RC settling, large-signal settling, and small-signal settling—enabling faster operation and reduced power consumption.

####  Implementation

<div align="center">
  <img src="https://github.com/user-attachments/assets/eda37edc-a826-4efa-adf8-91117612d4c8" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Reference

> Praveen Kumar Venkatachala, Spencer Leuenberger, Ahmed ElShater, Calvin Lee, Yang Xu, and Bohui Xiao,  
> “Process Invariant Biasing of Ring Amplifiers Using Deadzone Regulation Circuit,”  
> *Proceedings of the 2018 IEEE International Symposium on Circuits and Systems (ISCAS)*, Florence, Italy, 2018, pp. 1–5.  
> [DOI: 10.1109/ISCAS.2018.8351242](https://doi.org/10.1109/ISCAS.2018.8351242)

> Bohui Xiao, Praveen Kumar Venkatachala, Yang Xu, Ahmed ElShater, Calvin Yoji Lee, and Spencer Leuenberger,  
> “An 80 mA Capacitor-Less LDO With 6.5 µA Quiescent Current and No Frequency Compensation Using Adaptive-Deadzone Ring Amplifier,”  
> *Proceedings of the 2020 IEEE International Solid-State Circuits Conference (ISSCC)*, pp. 294–296, Feb. 2020.  
> [DOI: 10.1109/ISSCC19947.2020.9056970](https://ieeexplore.ieee.org/document/9056970)

---

##  Understanding the Behaviour of Ring Amplifier

Based on the work by Hershberg et al., we explore how deadzone tuning affects the performance of the Ring Amplifier and investigate its dynamic behavior across a full input voltage step.

#### Implementation

<div align="center">
  <img src="https://github.com/user-attachments/assets/932f3159-1b74-42ee-a06a-3a72a1d1721a" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Settling Across Various Deadzone Values

<div align="center">
  <img src="https://github.com/user-attachments/assets/3d8af2e7-57ec-4a79-b766-f27a47a113345" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Open-Loop Gain vs V<sub>OUT</sub> Across Deadzone

<div align="center">
  <img src="https://github.com/user-attachments/assets/69072c59-d5f8-4723-95e8-f65b92ee81b3" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Open-Loop Gain vs Frequency Across Deadzone

<div align="center">
  <img src="https://github.com/user-attachments/assets/49abb2d8-47de-49c5-8507-076d5baf0975" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

Note: The values here are not same. Its just for reference.

####  Ringamp transient response for Voltage step

<div align="center">
  <img src="https://github.com/user-attachments/assets/776e7507-ba8c-4c63-aa25-536922c0908a" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Reference

> J. Lagos, B. P. Hershberg, E. Martens, P. Wambacq and J. Craninckx,  
> “A 1-GS/s, 12-b, Single-Channel Pipelined ADC With Dead-Zone-Degenerated Ring Amplifiers,”  
> *IEEE Journal of Solid-State Circuits*, vol. 54, no. 3, pp. 646–658, March 2019.  
> [DOI: 10.1109/JSSC.2018.2889680](https://doi.org/10.1109/JSSC.2018.2889680)

> Praveen Kumar Venkatachala,  
> *Design Considerations and Circuit Techniques for Robust Ring-Amplifiers*,  
> Ph.D. Dissertation, Oregon State University, 2019.

## Acknowledgement 
I would like to express my sincere gratitude to **Dr. Praveen Kumar Venkatachala** for his constant mentorship and guidance throughout this project.
