Each value in an objectClass attribute is the name of an object class. As mentioned earlier, these classes either define the set of attributes that can or must be in an entry, or expand on the definitions inherited from another class.



ldapsearch -H ldap://localhost:1389 -x -b "o=uds.io" objectclass=*

ldapsearch -H ldap://localhost:1389 -x -b "o=uds.io, ou=users" cn="daemon@discodonniepresents.com"


ldapsearch -H ldap://localhost:1389 -x -b "o=uds.io" ou=users cn="daemon@discodonniepresents.com"
