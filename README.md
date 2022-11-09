## Steps to do the exercise

### Terraform
- Terraform provisions the infrastructure in AWS and created inventory file for the ansible.

### Ansible
 - Ansible will setup docker and executes docker-compose to bring up PostgreSQL database and pgadmin and opens ports 80 to access via web. So, terraform must be executed before running ansible playbooks.
