###REPORT
###Date report: 11-07-2025
###Excersice name: Create 3 username withname a.b.c (anynames...)

report details:
```
    sudo adduser nva
    sudo adduser nvb
    sudo adduser nvc
```

###Excersice name: should have password for them and one account should disable or lock (state -L)

report details:
```
    sudo usermod -L nva
```

###Excersice name: have an account with name **exploit**( account 4th ) should have permission write data into folder **/home/b** and **/home/c** with permission **3** and **5** to write and reading data. (CHMOD)
report details:
```
    sudo adduser nvd
        Full Name []: exploit
    sudo chmod 753 /home/nvb
    sudo chmod 755 /home/nvc
```

###Excersice name: account a should have default shell is /bin/sh.
report details:
```
    sudo usermod -s /bin/sh nva
```

###Excersice name: account b,c and exploit should default shell is /bin/bash
report details:
```
    # Users created with the "useradd" command default to /bin/bash
```

###Excersice name: account a should have home directory with name /home/data/test with 750
report details:
```
    sudo mkdir -p /home/data/test
    sudo chmod 750 -R /home/data/test
```

###Excersice name: account exploit should have owner the home directory of account a
report details:
```
    sudo chown -R nvd /home/data
    sudo chown nvd /home/data/test/
```

###Excersice name: account b and c should have permission write data into home directory account a
report details:
```
    sudo chmod -R 753 /home/data
    sudo chmod -R 753 /home/data/test
```
