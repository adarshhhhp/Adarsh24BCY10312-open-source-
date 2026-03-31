# OSS Audit: Python Ecosystem Analysis
**Student Name:** ADARSH PATEL  
**Registration Number:** 24BCY10312  
**Course:** Open Source Software (NGMC)  
**Target Software:** Python (PSF)

---

## 1. Project Introduction & "Why Python?"
[cite_start]Most people see Python as just a language, but after starting this audit, I realized it's actually a massive community-driven engine that runs everything from my local scripts to NASA's data pipelines[cite: 9, 10]. I chose Python because its "Open Source" nature isn't just a label—it's the reason it survived while other languages died out. [cite_start]This project isn't just a technical check; it’s an audit of the philosophy that makes Python work[cite: 13, 18].

## 2. Origin Story: Solving the "Amoeba" Problem
Python didn't start in a corporate boardroom. [cite_start]In the late 80s, Guido van Rossum was working on the Amoeba operating system[cite: 37, 41]. He was frustrated because he needed a language that was better than C but didn't have the limitations of Bourne Shell. 

[cite_start]Instead of keeping his solution private, he released it to the world in 1991. He wanted a tool that emphasized "readability" over complex syntax[cite: 10, 34]. [cite_start]This "sharing" mindset is exactly what Richard Stallman fought for—the idea that if you build a tool to fix a problem, everyone should be able to use and improve that tool[cite: 39, 40].

## 3. The License: Freedom vs. "Free Beer"
Python uses the **Python Software Foundation (PSF) License**. After reading the text, here is my breakdown:
* [cite_start]**The Four Freedoms:** It grants all four (Run, Study, Redistribute, and Improve)[cite: 44, 45].
* **Permissiveness:** Unlike the GPL, the PSF license is very permissive. [cite_start]A company can take Python, bundle it into a paid product, and they don't necessarily have to "open" their proprietary code[cite: 46, 47].
* [cite_start]**My Take:** If I built a world-changing tool, I'd choose a permissive license like PSF or MIT because it encourages the fastest possible adoption, even if corporations profit from it[cite: 47, 51].

## 4. Ethical Audit: Standing on Shoulders
[cite_start]Is it ethical for Meta or Google to make billions using Python without paying the community? [cite: 56, 57]
Personally, I think it's a fair trade. These companies give back by contributing code and funding the PSF. [cite_start]"Standing on the shoulders of giants" means we don't have to reinvent the wheel every time we want to print "Hello World"[cite: 58]. [cite_start]Open source doesn't kill innovation; it accelerates it by letting us focus on new problems instead of old ones[cite: 59].

## 5. Linux Footprint & Technical Environment
[cite_start]To conduct this audit, I used a Linux environment (Ubuntu)[cite: 66]. 
* [cite_start]**Installation:** Installed via `apt` (Advanced Package Tool)[cite: 68].
* [cite_start]**Binary Location:** Found in `/usr/bin/python3`[cite: 69].
* **Configuration:** System-wide site packages are managed in `/usr/lib/python3`.
* [cite_start]**Security:** Python scripts usually run under the standard user account to prevent unauthorized root access[cite: 65, 69].

## 6. Repository Structure
This repo contains the mandatory automated audit scripts:
1. [cite_start]`script1_system_identity.sh`: Environment overview[cite: 93].
2. [cite_start]`script2_package_inspector.sh`: Verification of Python installation[cite: 125].
3. [cite_start]`script3_disk_auditor.sh`: Security and permission check for system paths[cite: 145].
4. [cite_start]`script4_log_analyzer.sh`: Searching for errors in system logs[cite: 163].
5. [cite_start]`script5_manifesto_generator.sh`: Interactive philosophy tool[cite: 185].

---
