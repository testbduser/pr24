import psycopg2 # postgresql client

# connect to database
con = psycopg2.connect("dbname=lab_view user=user2 password=1234 host=192.168.1.40 port=5432")

# execute a query
cur = con.cursor()
cur.execute("SELECT x, y FROM fn ORDER BY x;")

# get results
arr = cur.fetchall()

# disconnect from database
cur.close()
con.close()

# open file for writing
f = open("sine.csv", "w")
for row in arr: # for each tuple
  f.write(f"{row[0]},{row[1]}\n") # write a csv row into file

# close file
f.close()
