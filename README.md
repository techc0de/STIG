# ansible-stig

Used primarily to STIG a plain ubuntu 18.04 unstallation, which can then be packaged into a base image for later use.  

Right now the provisioning / STIG'ing process is imperfect and requires some manual configuration.

## Manual Config Steps

### Add users (with keys) (and sudo):
- gl_tech
- bm_tech
- so_tech
- ia_scanner

### Installed Required Packages: 
`
 apt-get install auditd audispd-plugins aide apparmor-utils
`

### Executed ansible-stig playbook from host to target system
`
ansible-playbook -i stig.inventory -l aws.new-bastion.dvidshub.net stig-ubuntu-16-04.yml
`

### Configured firewall: 
` 
 ufw limit 22/tcp
 ufw enable
`

### Reconfigured clamav apparor rules via aa-logprof command:
`
 aa-logprof
`

### Restarted machine
