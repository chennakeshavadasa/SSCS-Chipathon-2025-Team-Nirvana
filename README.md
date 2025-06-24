# Chipathon-Nirvana
Mosbius work by team Nirvana for Chipathon 2025

### **Project Introduction: Reconfigurable Fully Differential Ring Amplifier with Deadzone regulation circuit for Educational and RF-Mixed-Signal Applications**

Dynamic amplifiers, particularly *Ring Amplifiers*, have emerged as compelling alternatives to traditional small-signal operational amplifiers due to their high-speed and energy-efficient characteristics. Originally proposed by Benjamin Hershberg at Oregon State University (OSU), ring amplifiers offer an innovative solution for high-performance analog blocks, especially in pipelined ADCs and filter circuits.

Our project aims to design and develop a **ring amplifier** that is optimized for **educational use and mixed-signal system integration**. The central focus is on **enabling user-driven exploration and understanding** of ring amplifier operation—including large-signal dynamics, deadzone behavior, and transition into small-signal behaviour.

To support this, we incorporate a **dedicated deadzone regulation circuit** based on the work of Dr. Praveen Kumar Venkatachala (PhD, OSU), which allows fine control over the amplifier’s transition between nonlinear and linear operating regions. This tunability makes our implementation suitable for multiple use cases, including **adaptive analog filters** and **pipelined ADCs**, while also serving as a **pedagogical platform** for analog circuit learners.

By bridging theoretical concepts with practical design, our Mosbius Chip makes dynamic amplifier behavior more accessible for learning analog and mixed-signal design.

##  Team

- **Nithin P** — *Design and Architecture*
- **Kelton Eckert** — *Design of Building Blocks*
- **Faiz Kurniawan** — *Layout*
- **Kandias Wardhana** — *Layout*
- **Snighdha Sarali** — *Layout*


## Specification

- **Bandwidth**: *50MHz*
- **Load Capacitor**: *250pF*
- **Transient settling**: *≤50nsec*
- **VDD**: *3.3V*

## Architecture 

<div align="center">
  <img src="https://github.com/user-attachments/assets/4a06a853-9d20-465e-aee2-c2d34ddffeee" alt="Screenshot_2025-06-22_171527" width="600"/>
</div>



