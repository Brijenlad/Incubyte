import mysql.connector as cm
mydb = cm.connect (host="localhost",user="root",passwd="brijen#660",database="sys")

def format_Date(date):
    if(date!="null"):
        x = date[0:2] # day
        y = date[2:4] # Month
        z = date[4:8] # Year
        return z+"/"+y+"/"+x
    else:
        return 0
try:
    mycursor = mydb.cursor()
    file=open("sample.txt",'r')
    for line in file:
        list=line.split('|') #Split data from file using | Symbol
        if(list[1]=='D'):
            flag = 0
            Country = (list[9])
            showQuery = "show tables;" #Find tables in Database
            mycursor.execute(showQuery) #Execute the Query
            result = mycursor.fetchall() # Fetch all data from the database
            for i in result:
                if (i[0].upper() == Country ):
                    flag = 1
                    try:
                        mySql_insert_query = """INSERT INTO """+Country+""" (Customer_Name,Customer_Id,Customer_Open_Date,Last_Consulted_Date,Vaccination_Type,Doctor_Consulted, State,Country,Postcode,Date_of_Birth,Active_Customer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) """
                        mycursor = mydb.cursor()
                        result = mycursor.execute(mySql_insert_query, (list[2], list[3], format_Date(list[4]), format_Date(list[5]), list[6], list[7], list[8], list[9], list[10], format_Date(list[11]),list[12]))
                        print(mycursor.rowcount, "Record inserted successfully into Country table.")
                        break
                    except cm.IntegrityError as exe:
                        print("Name  already exists.")
            if (flag == 0):
                mySql_Create_Table_Query = """ CREATE TABLE """+Country+""" ( Customer_Name varchar(255) NOT NULL, Customer_Id varchar(18) NOT NULL , Customer_Open_Date Date NOT NULL, Last_Consulted_Date Date , Vaccination_Type char(5) , Doctor_Consulted char(255) , State char(5) , Country char(5) , Postcode int(5) , Date_of_Birth Date , Active_Customer char(1) , PRIMARY KEY (Customer_Name) ) """
                mycursor = mydb.cursor()
                result = mycursor.execute(mySql_Create_Table_Query)
                print("Country Table created successfully:- ")
                try:
                    mySql_insert_query = """INSERT INTO """ + Country + """ (Customer_Name,Customer_Id,Customer_Open_Date,Last_Consulted_Date,Vaccination_Type,Doctor_Consulted, State,Country,Postcode,Date_of_Birth,Active_Customer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) """
                    mycursor = mydb.cursor()
                    result = mycursor.execute(mySql_insert_query, (list[2], list[3], format_Date(list[4]), format_Date(list[5]), list[6], list[7], list[8], list[9], list[10], format_Date(list[11]),list[12]))
                    print(mycursor.rowcount, "Record inserted successfully into Country table.")
                except cm.IntegrityError as exe:
                    print("Name already exists.")
            else:
                mycursor = mydb.cursor()
                mySql_insert_query = """INSERT INTO """ + Country + """ (Customer_Name,Customer_ID,Customer_Open_Date,Last_Consulted_Date,Vaccination_Type,Doctor_Consulted, State,Country,Postcode,Date_of_Birth,Active_Customer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) """
                try:
                    result = mycursor.execute(mySql_insert_query, (list[2], list[3], format_Date(list[4]), format_Date(list[5]), list[6], list[7], list[8], list[9], list[10], format_Date(list[11]),list[12]))
                    print(mycursor.rowcount, "Record inserted successfully into Customers table.")
                except cm.IntegrityError as exe:
                        print("Name already exists.")
except cm.Error as error:
            print("Failed to create table in MySQL:- {}".format(error))
            print("Failed to insert record into Country table:- {}".format(error))
            print("Failed to insert duplicate record:- {}".format(error))
finally:
        if mydb.is_connected():
            mydb.commit()
            mydb.close()
            print("MySQL connection is closed.")

