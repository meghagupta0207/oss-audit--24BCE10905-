---

# **Open Source Audit Scripts — README**

**Author:** Megha Gupta
**Course:** Open Source Software
**Environment:** Ubuntu Linux on WSL / Linux Systems

---

## **Project Overview**

This project contains **five shell scripts** designed to explore Linux systems, open-source software, and file/log analysis. Each script demonstrates key shell scripting concepts including variables, loops, conditional statements, user input, and file handling. The scripts were developed as part of the Open Source Audit project and are intended to run in a Linux environment.

---

## **Script Details**

### **1. System Identity Report (`script1.sh`)**

**Purpose:**
Generates a welcome screen showing the Linux system identity. Displays OS distribution, kernel version, current user, home directory, uptime, current date/time, and license information.

**Concepts Used:**

* Variables
* Command substitution (`$()`)
* `echo` formatting

**Usage:**

```bash
chmod +x script1.sh
./script1.sh
```

---

### **2. FOSS Package Inspector (`script2.sh`)**

**Purpose:**
Checks if a specified software package (e.g., Firefox) is installed, prints its version and license information, and provides a brief description of its purpose.

**Concepts Used:**

* `if-then-else` statements
* `case` statement
* Package querying with `dpkg -l`
* Piping with `grep`

**Usage:**

```bash
chmod +x script2.sh
./script2.sh
```

---

### **3. Disk and Permission Auditor (`script3.sh`)**

**Purpose:**
Loops through a list of important system directories, reports disk usage, ownership, and permissions. Includes an optional check for software configuration directories.

**Concepts Used:**

* `for` loops
* `df`, `du`, `ls -ld`
* `awk` / `cut` for field extraction
* Conditional checks

**Usage:**

```bash
chmod +x script3.sh
./script3.sh
```

---

### **4. Log File Analyzer (`script4.sh`)**

**Purpose:**
Reads a log file line by line, counts the number of occurrences of a keyword (default = “error”), prints a summary, and displays the last 5 matching lines. Includes a retry loop if the file is empty.

**Concepts Used:**

* `while read` loop
* `if` conditional
* Counter variables
* Command-line arguments `$1`, `$2`
* `grep` and `tail`

**Usage:**

```bash
chmod +x script4.sh
./script4.sh /var/log/syslog error
```

---

### **5. Open Source Manifesto Generator (`script5.sh`)**

**Purpose:**
Generates a personalized open-source philosophy paragraph by asking the user three interactive questions. Saves the manifesto to a `.txt` file with a timestamp.

**Concepts Used:**

* `read` for user input
* String concatenation
* Writing to a file (`>` and `>>`)
* Displaying file contents with `cat`
* Date command
* Alias concept demonstrated in comments

**Usage:**

```bash
chmod +x script5.sh
./script5.sh
```

---

## **Folder Structure**

```
project_folder/
│
├─ script1.sh
├─ script2.sh
├─ script3.sh
├─ script4.sh
├─ script5.sh
├─ README.md
```
