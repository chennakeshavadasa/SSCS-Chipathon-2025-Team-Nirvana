# Chipathon-Nirvana
Mosbius work by team **Nirvana** for Chipathon 2025

<div align="justify">

<h3><strong>Project Introduction: Reconfigurable Fully Differential Ring Amplifier with Deadzone Regulation Circuit for Educational and RF-Mixed-Signal Applications</strong></h3>

<p>
Dynamic amplifiers, particularly <em>Ring Amplifiers</em>, have emerged as compelling alternatives to traditional small-signal operational amplifiers due to their high-speed and energy-efficient characteristics. Originally proposed by <strong>Benjamin Hershberg</strong> at <strong>Oregon State University (OSU)</strong>, ring amplifiers offer an innovative solution for high-performance analog blocks, especially in pipelined ADCs and filter circuits.
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


By bridging theoretical concepts with practical design, our Mosbius Chip makes dynamic amplifier behavior more accessible for learning analog and mixed-signal design.

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

<div align="center">
  <img src="https://github.com/user-attachments/assets/4a06a853-9d20-465e-aee2-c2d34ddffeee" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

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

- Discrete-time pipeline ADC
  
<div align="center">
  <img src="https://github.com/user-attachments/assets/83d97ddb-7b1b-4b76-bcf0-51ca56521398" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>


- Two-step SAR ADCs

- Ring Amplifier based Filters

##  Ring Amplifier Based LDO

An LDO architecture with a ring amplifier based LDO which doesnt need any frequency compensation with deadzone regulation circuit. This is based on the work by P. K. Venkatachala et al.,

####  Implementation

<div align="center">
  <img src="https://github.com/user-attachments/assets/eda37edc-a826-4efa-adf8-91117612d4c8" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Reference

> P. K. Venkatachala, A. S. Madhukumar, and B. P. Hershberg,  
> “Process Invariant Biasing of Ring Amplifiers Using Deadzone Regulation Circuit,”  
> *2018 IEEE International Symposium on Circuits and Systems (ISCAS)*, Florence, Italy, 2018, pp. 1–5.  
> [DOI: 10.1109/ISCAS.2018.8351242](https://doi.org/10.1109/ISCAS.2018.8351242)

##  Understanding the Behaviour of Ring Amplifier

Based on the work by Hershberg et al., we explore how deadzone tuning affects the performance of the Ring Amplifier.

#### Implementation

<div align="center">
  <img src="https://github.com/user-attachments/assets/932f3159-1b74-42ee-a06a-3a72a1d1721a" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Settling Across Various Deadzone Values

<div align="center">
  <img src="https://github.com/user-attachments/assets/cf908b97-deed-4c79-b457-2331caf2f9a5" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Open-Loop Gain vs V<sub>OUT</sub> Across Deadzone

<div align="center">
  <img src="https://github.com/user-attachments/assets/b64a5b5c-37f0-421d-ba83-6f9d9a1ad4b7" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Open-Loop Gain vs Frequency Across Deadzone

<div align="center">
  <img src="https://github.com/user-attachments/assets/07b91847-b0a7-465f-802e-a5652d14fd26" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>

#### Reference

> J. Lagos, B. P. Hershberg, E. Martens, P. Wambacq and J. Craninckx,  
> “A 1-GS/s, 12-b, Single-Channel Pipelined ADC With Dead-Zone-Degenerated Ring Amplifiers,”  
> *IEEE Journal of Solid-State Circuits*, vol. 54, no. 3, pp. 646–658, March 2019.  
> [DOI: 10.1109/JSSC.2018.2889680](https://doi.org/10.1109/JSSC.2018.2889680)

## Acknowledgement 
I would like to express my sincere gratitude to **Dr. Praveen Kumar Venkatachala** for his constant mentorship and guidance throughout this project.
