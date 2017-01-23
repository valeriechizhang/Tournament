# Tournament
A Python program that uses a database schema in PostgreSQL to store the game matches between players.


# How to Run
<b>Initialize Vagrant</b><br>
1. Install Vagrant: http://vagrantup.com/ and VirtualBox: https://www.virtualbox.org/ <br>
2. Use the command "vagrant ssh" in the directory to start off vagrant <br>
3. Use the command "cd /vagrant/tournament/" to redirect to the tournament directory <br>

<b>Initilize the Database</b><br>
1. Use the command "psql" to start PostgreSQL<br>
2. Use the command \i tournament.sql to import the file into the database</br>

<b>Run the Test Program</b><br>
1. Use the command "python tournament_test.py" <br>
2. The test result will show up in the terminal. <br>



<b>References:</b><br>
Udacity Full Stack Web Developer Nanodegree
