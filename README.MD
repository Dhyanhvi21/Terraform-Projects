# 🌐 Multi-Region VPC Peering using Terraform

## 📌 Project Overview

This project demonstrates how to implement **VPC Peering across multiple AWS regions** using Terraform.

Two VPCs are created in different regions (Primary & Secondary), each hosting an EC2 instance. A **VPC Peering Connection** enables secure private communication between them using private IP addresses.

---

## 🏗️ Architecture

```
                ┌──────────────────────────────┐
                │      Primary Region          │
                │  VPC (10.0.0.0/16)           │
                │                              │
                │  EC2 Instance (Ubuntu)       │
                │        │                     │
                │     Subnet                   │
                │        │                     │
                │   Route Table               │
                │        │                     │
                │  Internet Gateway           │
                └────────┬────────────────────┘
                         │
                VPC Peering Connection
                         │
                ┌────────▼────────────────────┐
                │      Secondary Region        │
                │  VPC (192.168.0.0/16)       │
                │                              │
                │  EC2 Instance (Ubuntu)       │
                │        │                     │
                │     Subnet                   │
                │        │                     │
                │   Route Table               │
                │        │                     │
                │  Internet Gateway           │
                └──────────────────────────────┘
```

---

## 🚀 Features

* 🌍 Multi-region VPC setup
* 🔗 Cross-region VPC Peering
* 🌐 Internet Gateway configuration
* 🧭 Custom Route Tables
* 🔐 Secure Security Groups
* 🖥️ EC2 Instances (Ubuntu)
* 🔑 SSH Key Pair Integration
* ⚙️ Fully automated using Terraform

---

## ⚙️ Tech Stack

* **Terraform**
* **AWS (VPC, EC2, IGW, Route Tables)**
* **Ubuntu Linux**
* **Git & GitHub**

---

## 📂 Project Structure

```
vpc-peering-terraform/
│── main.tf
│── provider.tf
│── data.tf
│── backend.tf
│── var.tf
│── local.tf
│── dev.tfvars
│── README.md
```

---

## 🔄 Workflow / Execution Flow

1. Create VPCs in different regions
2. Create subnets inside each VPC
3. Attach Internet Gateways
4. Configure route tables for internet access
5. Establish VPC Peering connection
6. Accept peering request in secondary region
7. Add routes for cross-VPC communication
8. Configure security groups
9. Create key pairs
10. Launch EC2 instances
11. Test connectivity via private IP

---

## 🔁 Network Flow

```
Primary EC2 → Route Table → VPC Peering → Secondary VPC → EC2
```

✔️ Communication happens via **private IPs**
✔️ No internet involved for inter-VPC traffic

---

## 🧪 Testing

### 🔹 SSH into EC2

```bash
ssh -i <key.pem> ubuntu@<public-ip>
```

---

### 🔹 Ping Test

```bash
ping <private-ip>
```

---

### ✅ Expected Output

```
64 bytes from <ip>: icmp_seq=1 ttl=...
```

---

## ⚠️ Common Issues

| Issue                | Cause          | Solution          |
| -------------------- | -------------- | ----------------- |
| Ping not working     | Missing route  | Add peering route |
| SSH failed           | Wrong key/user | Use `ubuntu` user |
| No connectivity      | SG blocking    | Allow ICMP/TCP    |
| Instance unreachable | No public IP   | Enable public IP  |

---

## 🔐 Security Best Practices

* ❌ Do NOT commit `.pem` files
* ❌ Do NOT commit `.tfstate` files
* ✅ Use `.gitignore`
* ✅ Restrict security group rules in production

---

## 📈 Future Improvements

* Add **Nginx web server**
* Use **Private Subnets + NAT Gateway**
* Implement **Load Balancer**
* Convert to **Terraform Modules**
* Add **Monitoring (CloudWatch)**

---

## 🎯 Outcome

* ✅ Two VPCs connected across regions
* ✅ EC2 instances communicate via private IP
* ✅ Fully automated infrastructure using Terraform

---

## 👩‍💻 Author

**Dhyanhvi Kale**
🔗 GitHub: https://github.com/Dhyanhvi21

---

## ⭐ If you like this project

Give it a ⭐ on GitHub and share it 🚀
