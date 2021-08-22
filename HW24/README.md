# HW24

Create bash script to run ansible-playbook  
1. Split your inventory file into two files and use both to run your playbook
2. You should update the previous playbook. Create a user with a password. Use ansible vault. Keep password in vault.yml file. Also add to the user's home folder ./authorized_keys 2 random public keys.
3. Add tag to previous task to skip adding the user. Test it.
![1](/HW24/images/01.png) 

4. Add a new task to update all packages for your OS. Make it optional using tag.
5. Play with ./meta. In previous HW you have 2 roles. Make it obligatory to run one of the roles prior to another one.
![2](/HW24/images/02.png)

6. Update your previous playbook. Add 3 additional users to be created(all without sudo). Use loop. Run user creation only if the amount of users does not exceed 3. 
7. Which tools can you use to validate your playbook syntax?  
  
    >Ansible Lint, Ansible Review, Molecule, yamllint.  

8. How to change ansible deployment strategy to FREE? 2 ways.  

    >To change the strategy to free you can set it in the playbook or use argument at the startup of the playbook.
9. Using ansible generate a file with current date on your local machine and spray it to remote services
10. How to add a new instance to a play during your play? For example: If you run play for 1 host as a result you get 2 hosts updated.

    >You can use ```ansible.builtin.add_host``` which allows you to add host or group of hosts to inventory.

11. Create a task which will be skipped for only one of your hosts. Print message about this.
![3](/HW24/images/03.png)
12. Create a task which will be skipped for a group of you hosts. Print message about this
![4](/HW24/images/04.png)
13. Add a task to check internet access for remote hosts. If false for at least one host - stop your play
14. Install any random package with checking checksum_algorithm. Do not fail at the task but print a message about this.
15. How to hide task output?

    >By adding ```no_log: true``` in the task.

16. How to run the same role twice? 2 options

    >1. Pass different parameters in each role definition.
    >2. Add ```allow_duplicates: true``` to the meta/main.yml file for the role.
