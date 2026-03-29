# oss-audit-24BAI10060

> VITyarthi | Open Source Software — OSS NGMC Capstone Project

---

## Student Details

| Field | Details |
|-------|---------|
| **Student Name** |Kaustubh Upadhyay|
| **Registration Number** | 24BAI10060 |
| **SLOT** | B22
| **Course** | Open Source Software (OSS NGMC) |

---

## Chosen Software

**Git** — Distributed Version Control System
**License:** GNU General Public License v2 (GPL v2)  
**Official site:** https://git-scm.com 
**Source:** https://github.com/git/git

Git was created in 2005 by Linus Torvalds after the free-of-charge status of the proprietary BitKeeper DSCM was revoked. It was designed to be fast, distributed, and highly resistant to corruption. Today, it is the industry standard for version control and the engine behind platforms like GitHub and GitLab.

---

## Repository Structure

```
oss-audit-24BAI10060/
├── README.md
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
└── script5.sh
```

The project report PDF is submitted separately on the VITyarthi portal.

---

## Script Descriptions

### Script 1 — System Identity Report (`script1_system_identity.sh`)

Prints a summary of the current Linux system — distro, kernel, logged-in user, home directory, uptime, date/time, and a note about the GPL v2 licence. All values are read live using command substitution.

**Concepts used:** variables, `echo`, command substitution `$()`, `uname -r`, `lsb_release`, `whoami`, `uptime -p`, `date`, `cut`.

---

### Script 2 — FOSS Package Inspector (`script2_package_inspector.sh`)

Checks if `mysql-server` is installed using `dpkg -l`. If yes, shows the version and licence. A `case` statement prints a short note about the package's open source history — covering MySQL, MariaDB, Apache, and a default fallback.

**Concepts used:** `if-else`, `case` statement, `dpkg -l`, `mysql --version`.

---

### Script 3 — Disk and Permission Auditor (`script3_disk_auditor.sh`)

Loops through a list of system directories and prints permissions, owner, and size for each. A second loop at the end checks MySQL-specific config paths — `/etc/mysql`, `/var/lib/mysql`, `/var/log/mysql`.

**Concepts used:** `for` loop, bash arrays `DIRS=(...)`, `[ -d ]` directory test, `ls -ld`, `awk`, `du -sh`, `cut`.

---

### Script 4 — Log File Analyzer (`script4_log_analyzer.sh`)

Takes a log file and keyword as command-line arguments, reads the file line by line, counts keyword matches, and prints the last 5 matching lines. Includes a retry loop if the file is empty.

**Concepts used:** command-line arguments `$1 $2`, `${2:-"error"}` default value, `[ ! -f ]` file test, `while IFS= read -r` loop, `if-then` inside loop, counter arithmetic `$(())`, `grep -i`, `tail -5`.

---

### Script 5 — Open Source Manifesto Generator (`script5_manifesto_generator.sh`)

Asks 3 questions interactively, then writes a personalised open-source statement to a `.txt` file and displays it. The manifesto references MySQL and MariaDB directly.

**Concepts used:** `read -p`, string variables in `echo`, grouped output with `{}` and `>`, `date`, `$(whoami)` in filename, `cat`. Alias concept explained in comment.

---

## Dependencies

| Tool | Used In | Install (Ubuntu/Debian) |
|------|---------|--------------------------|
| `bash` | All scripts | Pre-installed |
| `git` | Script 2 | `sudo apt install git` |
| `lsb-release` | Script 1 | `sudo apt install lsb-release` |
| `gawk` | Script 3 | `sudo apt install gawk` |
| `coreutils` | All scripts | Pre-installed |



---

## How to Run

### Step 1 — Clone the repo

```bash
git clone https://github.com/kaustubh2204/oss-audit-24BAI10060.git
cd oss-audit-24BAI10060
```

### Step 2 — Make scripts executable

```bash
chmod +x *.sh
```

### Script 1

```bash
./script1.sh
```

### Script 2

```bash
./script2.sh
```

> git is NOT installed: `sudo apt install git`

### Script 3

```bash
./script3.sh
```
Directory Audit Report
----------------------
/etc => Permissions: drwxr-xr-x kstbh 197609 | Size: 1.6M
/var/log does not exist on this system
/home does not exist on this system
/usr/bin => Permissions: drwxr-xr-x kstbh 197609 | Size: 91M
/tmp => Permissions: drwxr-xr-x kstbh 197609 | Size: 855M
### Script 4

```bash
zer.sh /var/log/syslog error
```

> Needs `sudo` to read system logs. For the MySQL error log specifically:
> ```bash
> sudo ./script4_log_analyzer.sh /var/log/mysql/error.log error
> ```
> If the log doesn't exist yet, generate a test file:
> ```bash
> sudo journalctl > /tmp/test.log && ./script4_log_analyzer.sh /tmp/test.log error
> ```

### Script 5

```bash
./script5.sh
```

---

## Troubleshooting

| Problem | Fix |
|---------|-----|
| `Permission denied` | Run `chmod +x scriptname.sh` |
| `lsb_release not found` | `sudo apt install lsb-release` |
| `mysql: command not found` in Script 2 | `sudo apt install mysql-server` |
| Script 4 log file not found | Use `sudo` or generate a test log with `journalctl` |
| MySQL paths show "Not found" in Script 3 | MySQL may not be installed yet |

---

## References

- MySQL Reference Manual: https://dev.mysql.com/doc/refman/8.0/en/
- MariaDB Foundation: https://mariadb.org/about/
- GNU GPL v2: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
- GNU Free Software Definition: https://www.gnu.org/philosophy/free-sw.html
- The Linux Command Line: https://linuxcommand.org
- GNU Bash Manual: https://www.gnu.org/software/bash/manual
