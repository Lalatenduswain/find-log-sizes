## ✅ Find Log Sizes


### 1. **Repo URL**

```text
https://github.com/Lalatenduswain/find-log-sizes
```

### 2. **Clone the Repo**

```bash
git clone https://github.com/Lalatenduswain/find-log-sizes.git
cd find-log-sizes
```

### 3. **Script: `find-log-sizes.sh`**

Place the following script inside the repo as `find-log-sizes.sh`:

```bash
#!/bin/bash

# Prompt for the base directory
read -rp "Enter the base directory to search for .log files (e.g., /var/www): " BASE_DIR

# Validate input
if [ ! -d "$BASE_DIR" ]; then
    echo "Error: Directory '$BASE_DIR' does not exist."
    exit 1
fi

# Print header
printf "\n%-80s %-25s %-10s\n" "Directory" "Log File" "Size"
printf -- "------------------------------------------------------------------------------------------------------------\n"

# Find and list .log files with sizes
find "$BASE_DIR" -type f -name "*.log" | while read -r file; do
    dir_path=$(dirname "$file")
    file_name=$(basename "$file")
    file_size=$(du -h "$file" | cut -f1)
    printf "%-80s %-25s %-10s\n" "$dir_path" "$file_name" "$file_size"
done
```

### 4. **Make Executable**

```bash
chmod +x find-log-sizes.sh
```

---

## 📘 README.md Example

````markdown
# find-log-sizes

A simple bash utility to recursively search and display `.log` file sizes from a user-specified base directory.

## 🔧 Usage

```bash
./find-log-sizes.sh
````

You’ll be prompted to input the base directory (e.g., `/var/www`), and the script will output a table showing:

* Log file directory
* Filename
* Human-readable file size

## Example Output

```
Directory                                                                       Log File                 Size
------------------------------------------------------------------------------------------------------------
/var/www/html/app/tmp/logs                                                     error.log                212K
/var/www/html/app/tmp/logs                                                     debug.log                120M
```

## 📌 Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## ☕ Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## 🛠 Support or Contact

Encountering issues? Submit a GitHub issue here: [GitHub Issues](https://github.com/Lalatenduswain/find-log-sizes/issues)

```
