# Project-1
Web server- automation

ansible server --
    ssh-copy-id -f "-o IdentityFile vm-1_key.pem"  manish@4.213.63.216
    
ansible node --
    sudo nano /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
        PasswordAuthentication yes
    sudo systemctl restart ssh
