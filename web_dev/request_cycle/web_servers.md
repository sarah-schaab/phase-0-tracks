# What are some of the key design philosophies of the Linux operating system?

* they designed the linux OS by treating everyone as being computer literate.
* They wanted it to be more of a sandbox than a set tool.

# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
* a VPS is a server that is hosted by yourself and it is a "machine" sold as a service to by an internet hosting service.

* some of the advantages to using a VPS are:
 - the cost to run a VPS is much lower than a physical server.
 - they are functionally equivalent to a physical server
 - Because they are software-defined, they are able to be easily created and configured.

# Why is it considered a bad idea to run programs as the root user on a Linux system?
* the best explination I found was on a ask.com response and I will post it here for future reference for when I have a more solid understanding of what this all means:

* It defeats the security model that's been in place for years. Applications are meant to be run with non-administrative security (or as mere mortals) so you have to elevate their privileges to modify the underlying system. For example, you wouldn't want that recent crash of Rhythmbox to wipe out your entire /usr directory due to a bug. Or that vulnerability that was just posted in ProFTPD to allow an attacker to gain a ROOT shell.

 It's just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.

 * my main understaning is that someone who you do not want to, could change or manipulate the OS without knowing so, or it could be easily hacked and wipe out the whole user directory.