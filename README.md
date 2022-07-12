# Recruitment-Task

Created a Vagrantfile that brought up and configured a new virtual machine and also established Ansible as it's provisioner. Then wrote an Ansible playbook
that installed Jenkins on the provisioned machine and also copied the necessary files. Finally a shell script that created new Jenkins jobs was added
to cron in the Ansible playbook. You can view the current jobs by doing `vagrant ssh`, and then <br />
`cat current_jobs.txt`.
