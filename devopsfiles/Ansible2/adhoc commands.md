##To Start The nginx Server in monitor node
ansible -i inventory all -m ansible.builtin.service -a "name=nginx state=started"

# Running the commands 

# To run the prompt varibles --> ansible-playbook <playbookname>
# To run the inventory files varibles:--> ansible-playbook -i <inventory-file> <playbook file name>
# To run the varibles from task levels --> 
 
 ansible can take play level varibales and over ride them with task level varibales 

 # playlevel variables
 # Tasklevel varibles
 # inventory level variables
 # prompt varibles
 # Variables from the command line tool 


# Preference of the varibles:
1) Command level variables
2) task level variables
3) Files level varibles
4) Prompt Level Variables
5) Play Level Variables
6) Inventory Level Variables
7) Roles level Varibels
