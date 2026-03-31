# OSS Audit: Python Ecosystem Analysis
**Student Name:** ADARSH PATEL  
**Registration Number:** 24BCY10312  
**Course:** Open Source Software (NGMC)  
**Target Software:** Python (PSF)

---

## 1. Project Introduction & "Why Python?"
Most people see Python as just a language, but after starting this audit, I realized it's actually a massive community-driven engine that runs everything from my local scripts to NASA's data pipelines. I chose Python because its "Open Source" nature isn't just a label—it's the reason it survived while other languages died out.This project isn't just a technical check; it’s an audit of the philosophy that makes Python work.

## 2. Origin Story: Solving the "Amoeba" Problem
Python didn't start in a corporate boardroom. In the late 80s, Guido van Rossum was working on the Amoeba operating system. He was frustrated because he needed a language that was better than C but didn't have the limitations of Bourne Shell. 

Instead of keeping his solution private, he released it to the world in 1991. He wanted a tool that emphasized "readability" over complex syntax. This "sharing" mindset is exactly what Richard Stallman fought for—the idea that if you build a tool to fix a problem, everyone should be able to use and improve that tool.

## 3. The License: Freedom vs. "Free Beer"
Python uses the **Python Software Foundation (PSF) License**. After reading the text, here is my breakdown:
**The Four Freedoms:** It grants all four (Run, Study, Redistribute, and Improve).
* **Permissiveness:** Unlike the GPL, the PSF license is very permissive. A company can take Python, bundle it into a paid product, and they don't necessarily have to "open" their proprietary code.
* **My Take:** If I built a world-changing tool, I'd choose a permissive license like PSF or MIT because it encourages the fastest possible adoption, even if corporations profit from it.

## 4. Ethical Audit: Standing on Shoulders
Is it ethical for Meta or Google to make billions using Python without paying the community?
Personally, I think it's a fair trade. These companies give back by contributing code and funding the PSF. "Standing on the shoulders of giants" means we don't have to reinvent the wheel every time we want to print "Hello World". [cite_start]Open source doesn't kill innovation; it accelerates it by letting us focus on new problems instead of old ones.

## 5. Linux Footprint & Technical Environment
To conduct this audit, I used a Linux environment (Ubuntu). 
* **Installation:** Installed via `apt` (Advanced Package Tool).
* **Binary Location:** Found in `/usr/bin/python3`.
* **Configuration:** System-wide site packages are managed in `/usr/lib/python3`.
* **Security:** Python scripts usually run under the standard user account to prevent unauthorized root access.

## 6. Repository Structure
This repo contains the mandatory automated audit scripts:
1. `script1_system_identity.sh`: Environment overview.
2. `script2_package_inspector.sh`: Verification of Python installation.
3. `script3_disk_auditor.sh`: Security and permission check for system paths.
4. `script4_log_analyzer.sh`: Searching for errors in system logs.
5. `script5_manifesto_generator.sh`: Interactive philosophy tool.

---
