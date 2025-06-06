# ansible-playbook-filebeat

Install Filebeat using `ansible-role-filebeat`.

## Instructions

### 1. Clone this repository:

```bash
git clone https://github.com/UMNET-perfSONAR/ansible-playbook-filebeat.git
cd ansible-playbook-filebeat
```

### 2. Install the Filebeat role:

```bash
ansible-galaxy install git+https://github.com/UMNET-perfSONAR/ansible-role-filebeat.git,main --roles-path ./roles
```

**Note:** If you need to reinstall the role, first remove it:

```bash
ansible-galaxy remove ansible-role-filebeat
```

Then run the install command again.

### 3. Run `defaults.sh`:

```bash
chmod +x defaults.sh
./defaults.sh
```

### 4. (Optional) Edit the hosts file:

```bash
vi inventory/hosts.ini
```

### 5. Run the playbook:

```bash
ansible-playbook install_filebeat.yml --ask-become-pass -e "ansible_become_method=su"
```

You'll be prompted to type in the BECOME password.
**Note:** this command may differ depending on your hosts


