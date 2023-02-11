
LightBlue='\033[1;34m'

# TCP Syncookies - good against SYN Flood attack
sysctl -w net.ipv4.tcp_syncookies=1

# Reverse-path filter against spoofing your server
sysctl -w net.ipv4.conf.all.rp_filter=1

# Decrease timeout for last_ack against SYN attacks
sysctl -w net.netfilter.nf_conntrack_tcp_timeout_last_ack=20

# Decrease timeout for closing conns for better performance and resistance >
sysctl -w net.netfilter.nf_conntrack_tcp_timeout_close=5

# Decrease timeout for UDP against some attacks
sysctl -w net.ipv4.netfilter.ip_conntrack_udp_timeout=20

# Decrease timeout for close_wait against TCP attacks
sysctl -w net.netfilter.nf_conntrack_tcp_timeout_close_wait=3

# Increase max open files for high-loaded servers
sysctl -w fs.file-max=2000000

# Increase max connections for better network performance
sysctl -w net.core.somaxconn=55555

# Enable TCP TW reuse for better performance
sysctl -w net.ipv4.tcp_tw_reuse=1;

# Decrease swappiness for better performance
sysctl -w vm.swappiness=30"
# Enable ExecShield (additional protection)
sysctl -w kernel.exec-shield=1
# Disable ARP Proxy, overall protection
sysctl -w net.ipv4.conf.all.proxy_arp=0"

# Increase SYN Backlog value for better performance and resistance to attac>
sysctl -w net.ipv4.tcp_max_syn_backlog=16384

# Decrease SYN-ACK retries value against sophisticated attacks
sysctl -w net.ipv4.tcp_synack_retries=1

# Decrease SYN retries value, better protect against SYN Flood
sysctl -w net.ipv4.tcp_syn_retries=2

# Increase netcore max backlog. Improves network speed under heavy load con>
sysctl -w net.core.netdev_max_backlog=100000

# Overall network security hardening
sysctl -w net.ipv4.conf.all.mc_forwarding=0
sysctl -w net.ipv4.route.flush=1
sysctl -w net.ipv4.conf.all.send_redirects=0
sysctl -w net.ipv4.conf.all.accept_source_route=0
sysctl -w net.ipv6.conf.all.accept_redirect=0
sysctl -w net.ipv6.conf.all.accept_ra=0
sysctl -w net.ipv6.route.flush=1
sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1
sysctl -w net.ipv4.conf.all.secure_redirects=1
sysctl -w net.ipv6.conf.all.accept_redirect=0
sysctl -w net.ipv6.echo_ignore_multicast=1
sysctl -w net.ipv6.echo_ignore_anycast=1
sysctl -w net.ipv4.tcp_rfc1337=1
sysctl -w net.netfilter.nf_conntrack_helper=0

clear;
echo -e "$LightBlue[+] Tweaks applied!"
