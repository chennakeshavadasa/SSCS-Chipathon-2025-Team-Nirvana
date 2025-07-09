# Chipathon-Nirvana
Mosbius work by team Nirvana for Chipathon 2025

### **Project Introduction: Reconfigurable Fully Differential Ring Amplifier with Deadzone regulation circuit for Educational and RF-Mixed-Signal Applications**

- Dynamic amplifiers, particularly *Ring Amplifiers*, have emerged as compelling alternatives to traditional small-signal operational amplifiers due to their high-speed and energy-efficient characteristics. Originally proposed by Benjamin Hershberg at Oregon State University (OSU), ring amplifiers offer an innovative solution for high-performance analog blocks, especially in pipelined ADCs and filter circuits.

- Our project aims to design and develop a **Ring amplifier** that is optimized for **educational use and mixed-signal system integration**. The central focus is on **enabling user-driven exploration and understanding** of Dynamic Amplifier behviour such as that of Ring amplifier operation—including large-signal dynamics, deadzone behavior, and transition into small-signal behaviour.

- To support this, we incorporate a dedicated deadzone regulation circuit based on the work of Dr. Praveen Kumar Venkatachala (Ph.D., OSU). This circuit enables fine-grained control over the ring amplifier’s transition between nonlinear and linear operating regions. It provides a PVT-robust mechanism to set the deadzone required to operate the ring amplifier in its small-signal mode.

- Additionally, users can manually vary the deadzone to explore the amplifier’s behavior across different deadzone widths. This tunability makes the implementation highly versatile, supporting a wide range of use cases including discrete-time pipeline ADCs, two-step SAR ADCs, Analog filters, LDOs, and also serving as a platform to study the behavior of dynamic amplifiers.

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



