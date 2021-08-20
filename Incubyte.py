import mysql.connector as cm
mydb = cm.connect(host="localhost",user="root",passwd="brijen#660",database="sys")
#try:
file=open("sample.txt",'r')
for line in file:
    list=line.split('|')
    if(list[1]=='D'):
        print(list[2])
    name=list[2]
    start=list[3]
    mySql_Create_Table_Query = """CREATE TABLE Customers (                              
                             Customer_Id varchar(18) NOT NULL PRIMARY KEY,
                             Customer_Name varchar(255) NOT NULL,                                                         
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
#except:
    #mydb.connector.Error as error:
    #print("Failed to create table in MySQL:- {}".format(error))
    #finally:
    #if mydb.connection.is_connected():
    #mycursor.close()
    #mydb.connection.close()
    #print("MySQL connection is closed.")
file.close()
