# 5G-Network-Slicing_Katana-NBI-Gr-33
Developed Katana NBI, an open-source 5G network slicing manager, enabling efficient creation, deployment, and monitoring of virtual slices. Our work focused on enhancing slice orchestration, abstracting resource management complexities, and integrating with network infrastructures to meet diverse application and service requirements.

# Network Slicing Using Katana NBI

## 🚀 **Introduction**
Network slicing is a key feature of 5G networks that enables the creation of multiple virtual networks on top of shared physical infrastructure. This innovation allows service providers to tailor network capabilities to specific applications and services, such as **enhanced Mobile Broadband (eMBB)** for high-speed data, **massive Machine-Type Communications (mMTC)** for IoT devices, and **Ultra-Reliable Low-Latency Communications (URLLC)** for mission-critical applications.

This repository focuses on the implementation of **network slicing** using the **Katana Northbound Interface (NBI)**, an open-source slice manager that simplifies the orchestration and management of network slices. Katana NBI provides RESTful APIs to define, modify, and manage slices, ensuring efficient resource utilization while meeting diverse Quality of Service (QoS) requirements.

By leveraging Katana NBI, we aim to demonstrate how advanced network slicing can optimize 5G networks, providing a foundation for scalable and flexible connectivity solutions across industries.

---

## 📚 **Abstract**
Network slicing is revolutionizing 5G networks by allowing multiple virtual networks to coexist over shared physical infrastructure. This enables service providers to meet the specific demands of applications ranging from IoT connectivity to ultra-reliable low-latency communications. 

This repository provides:
- **An in-depth exploration of Katana NBI**: A modular, open-source slice manager that orchestrates network slices efficiently.
- **Detailed architecture and methodologies**: A breakdown of Katana NBI’s components, including slice mapping, resource allocation, and policy enforcement.
- **Implementation details and simulations**: Code and configurations that demonstrate how slice requests are processed, validated, and mapped to network resources.
- **Simulation results**: Observations on resource utilization, isolation levels, and error handling during slice management.

This project showcases how Katana NBI enables service providers to efficiently manage network slices while adhering to policies and QoS parameters, making it a vital tool for modern 5G deployments.

---

### 🛠 **Key Features**
- RESTful APIs for slice management (creation, modification, deletion).
- Resource mapping for optimal allocation of network functions.
- Policy enforcement to ensure slice isolation and performance.
- Simulation scenarios demonstrating scalability and efficiency.

---

### 📂 **Contents**
1. **Architecture Overview**: Explore Katana NBI's modular design and database interactions.
2. **Methodology**: Detailed steps for slice request processing and resource mapping.
3. **Simulation and Results**: Insights into performance, resource utilization, and scalability.
4. **Future Enhancements**: Opportunities for improving isolation, scalability, and monitoring.

---

### 🖥️ **How to Use**
1. Clone this repository:  
   ```bash
   git clone https://github.com/your-username/katana-nbi-network-slicing.git
   ```
2. Follow the setup instructions in the [Installation Guide](./docs/installation.md).  
3. Run the simulation scripts in the `simulation` folder to explore different network slicing scenarios.  
4. Use the APIs to create, modify, and delete slices as described in the [API Documentation](./docs/api.md).

---

### 🌟 **Future Enhancements**
- Advanced slice isolation mechanisms at the virtualized resource level.
- Dynamic resource scaling for real-time demands.
- AI/ML-based predictive resource allocation and optimization.
- Sophisticated monitoring tools for deeper insights into slice performance.

---

### 📜 **References**
- [Katana Slice Manager Documentation](https://katana-slice-manager-docs.com)
- [5G Network Slicing White Paper](https://5g-network-slicing-paper.com)
- [MongoDB Documentation](https://www.mongodb.com/docs/)
