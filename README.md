# Linux Infra Scripts

This repository contains a collection of real-world Bash scripts I wrote while learning and practicing Linux system administration and DevOps concepts.

These scripts simulate problems faced by SREs, backend engineers, and system administrators at scale — like CPU spikes, disk full conditions, service downtime, log bloating, and user management issues.

> uilt as part of my **6-month Infra Builder Roadmap**.

---

## Categories

### System Monitoring
Scripts that detect CPU load, memory usage, zombie processes.
- `cpu_load_checker.sh`
- `high_CPU_Load_investigation.sh`
- `ram_usage_monitor.sh`
- `zombie_process_detection.sh`

### Disk Tools
Scripts to track disk usage, file types, and monitor space.
- `disk-full_issue.sh`
- `disk_usage_by_file_type.sh`
- `touch_monitor_disk_space.sh`

### Service Tools
Scripts to check connectivity, uptime, or auto-recover services.
- `service_down_auto_recovery.sh`
- `service_uptime_checker.sh`
- `simple_connectivity_checker.sh`

### Log Tools
Log archiving, error detection, and failed login tracking.
- `log_archiver.sh`
- `log_error_detector.sh`
- `invalid_user_login_attempts.sh`

### User Tools
Handle user inputs, manage accounts, file checks.
- `user_input.sh`
- `user_management.sh`
- `check_file_exists.sh`

### Playground
Mini practice scripts and loop experiments.
- `if_else_prac.sh`
- `looping_over_list.sh`
- `while_loop.sh`
- `welocome.sh`
- `backup_script.sh`
- `touch`

---

## How to Use

Make scripts executable:

```bash
chmod +x script_name.sh 

Make Scripts Running:

./script.sh 

## License

MIT - free to use, improve, and learn from.
