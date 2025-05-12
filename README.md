# Find Log Sizes

A Bash script that recursively searches for all `.log` files under a specified base directory and displays their sizes in a clean, tabular format. Useful for system administrators and developers who need to audit log usage across directories.

---

## 🚀 Features

- Prompts the user to input a base directory
- Finds all `.log` files recursively
- Displays output in a table: `Directory`, `Filename`, and `Size`
- Human-readable size output (e.g., MB, GB)
- Minimal dependencies (pure Bash + coreutils)

---

## 📦 How to Use

### 🖥️ Run the Script

```bash
git clone https://github.com/Lalatenduswain/find-log-sizes.git
cd find-log-sizes
chmod +x find-log-sizes.sh
./find-log-sizes.sh
````

### 📥 Sample Output

```
Enter the base directory to search for .log files (e.g., /var/www): /home/typefocus/websites

Directory                                                                       Log File                 Size     
------------------------------------------------------------------------------------------------------------
/home/typefocus/websites/v6.typefocus.com/v1/app/tmp/logs                      debug.log                172M     
/home/typefocus/websites/v6.typefocus.com/v1/app/tmp/logs                      error.log                89M      
/home/typefocus/websites/jobs.typefocus.com/v1/app/tmp/logs                    debug.log                15M      
...
```

---

## 📌 Disclaimer | Running the Script

**Author:** Lalatendu Swain
**GitHub:** [@Lalatenduswain](https://github.com/Lalatenduswain)
**Blog:** [blog.lalatendu.info](https://blog.lalatendu.info)

> This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

---

## ☕ Donations

If you find this script useful and want to show your appreciation, you can donate via:
👉 [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

---

## 🛠 Support or Contact

* 🐞 Issues or feature requests? Submit via: [GitHub Issues](https://github.com/Lalatenduswain/find-log-sizes/issues)
* 💬 Need help? Open a ticket and describe your environment and issue.

---

## 📄 License

This project is licensed under the MIT License.

```
