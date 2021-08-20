import mysql.connector as cm
mydb = cm.connect(host="localhost",user="root",passwd="brijen#660",database="sys")
try:
    file=open("sample.txt",'r')
    for line in file:
        list=line.split('|')
        print(list)
        if(list[1]=='D'):
            print(list[2])
            name=list[2]
            start=list[3]
            mySql_Create_Table_Query = """CREATE TABLE Customers ( 
                             Customer_Name varchar(255) NOT NULL,                             
                             Customer_Id varchar(18) NOT NULL PRIMARY KEY,                                                                                     
                             Customer_Open_Date Date NOT NULL,
                             Last_Consulted_Date Date ,                            
                             Vaccination_Type char(5) ,
                             Doctor_Consulted char(255) ,
                             State char(5) ,
                             Country char(5) ,
                             Postcode int(5) ,
                             Date_of_Birth Date ,
                             Active_Customer char(1) 
                            ) """
            mycursor = mydb.cursor()
            result = mycursor.execute(mySql_Create_Table_Query)
            print("Customers Table created successfully:- ")
            mySql_insert_query = """INSERT INTO Customers (Customer_Name,Customer_Id,Customer_Open_Date,Last_Consulted_Date,Vaccination_Type,Doctor_Consulted, State,Country,Postcode,Date_of_Birth,Active_Customer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s) """
            #mycursor = connection.cursor()
            print(list[2],list[3],list[4],list[5],list[6],list[7],list[8],list[9],list[10],list[11],list[12])
            result=mycursor.execute(mySql_insert_query,(list[2],list[3],list[4],list[5],list[6],list[7],list[8],list[9],list[10],list[11],list[12]))
            print(mycursor.rowcount, "Record inserted successfully into Customers table.")
            mydb.commit()
            mycursor.close()
except cm.Error as error:
            print("Failed to create table in MySQL:- {}".format(error))
            print("Failed to insert record into Customers table {}".format(error))
finally:
        if mydb.is_connected():
            mycursor.close()
            mydb.close()
            print("MySQL connection is closed.")
file.close()
