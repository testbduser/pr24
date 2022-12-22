import psycopg2 # postgresql client
import numpy as np # numeric Library
import matplotlib.pyplot as mp # plot Library

# connect to database
con = psycopg2.connect ("dbname=lab_view user=user2 password=1234 host=192.168.1.40 port=5432")

# execute a query
cur = con.cursor()
cur.execute ("SELECT x, y FROM fn ORDER BY x;")

# get results
arr = cur.fetchall()

# disconnect from database Ly
cur.close()
con.close()

# convert a List of (x, y) tuples into separate arrays x[] and y[]
x, y = np.array(arr).T # .T - is a transpose operation
#x = [p[0] for p in arr]
#y = [p[1] for p in arr]

# simple Line plot
mp.plot(x, y)

# set title and labels
mp.title('sine wave')
mp.xlabel('x')
mp.ylabel('y = sin(x)')

# setup grid
mp.grid(True, which='both')
mp.axhline(y=0, color='k')

# display result
mp.show()
