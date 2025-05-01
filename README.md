# 📚 OOP  Case study Projects

Welcome to my collection of Object-Oriented Programming (OOP) practice projects! 🚀  
Each project demonstrates real-world application of abstract classes, inheritance, polymorphism, encapsulation, and input validations.

---

## 🏗️ Project 1: Site Construction Management System (REAL CONSTRUCTOR)

### 📋 Project Description
This system simulates material handling and cost tracking on a construction site using abstract classes and inheritance.

### 🛠️ Features
- Accept and validate material deliveries (1–10 tons).
- Allow material usage ensuring minimum stock (≥ 2 tons).
- Estimate costs based on material quantity.
  - 5–15 tons → 200,000 RWF/ton
  - Above 15 tons → 180,000 RWF/ton (bulk discount).

---

## 🏨 Project 2: Hotel Management System (LEMIGO HOTEL)

### 📋 Project Description
This system manages guest reservations, checkouts, and billing for a hotel(LEMIGO HOTEL).

### 🛠️ Features
-Book rooms if stayDays are between 1 and 30.
-Ensure room is available before booking.
-Checkout guests and free up rooms.
-Calculate billing:
  - STANDARD → 50,000 RWF/night
  - DELUXE → 80,000 RWF/night
  - SUITE → 120,000 RWF/night.

---

## 🚓 Project 3: Traffic Fine Management System (Rwanda National Police)

### 📋 Project Description
This project helps Rwanda National Police manage traffic violations, assess fines, and handle fine payments effectively.

### 🛠️ Features
-Record new traffic violations.

-Validate violation types (Speeding, Red Light, No Helmet, DUI).

-Process fine payments and update statuses.

-Assess fines:
  - SPEEDING → 50,000 RWF
  - RED_LIGHT → 80,000 RWF
  - NO_HELMET → 30,000 RWF
  - DUI → 150,000 RWF

---

## How to run the Docker file

First build the image

<pre> docker build -t joconde5/joconde_ngoga_26441:latest . </pre>

Run the image

<pre> docker run -it joconde5/joconde_ngoga_26441:latest </pre>

this will display the menu of the projects and you will choose the one to run first.

---

Docker Image: [joconde_ngoga_26441](https://hub.docker.com/r/joconde5/joconde_ngoga_26441)

Github Repository: [JocondeNgoga](https://github.com/Joconde-N/JocondeNgoga)

---
