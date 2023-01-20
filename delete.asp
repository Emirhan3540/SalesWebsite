<%
'Dimension variables
Dim adoCon			'Holds the Database Connection Object
Dim rsDeleteEntry	'Holds the recordset for the record to be deleted
Dim strSQL			'Holds the SQL query for the database



'Create an ADO connection odject
Set adoCon = Server.CreateObject("ADODB.Connection")

'Set an active connection to the Connection object using a DSN-less connection
adoCon.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("products.mdb")

'Create an ADO recordset object
Set rsDeleteEntry = Server.CreateObject("ADODB.Recordset")

'Initialise the strSQL variable with an SQL statement to query the database
strSQL = "Select orders.customer_id, orders.product_id ,orders.product_count FROM orders WHERE orders.customer_id=orders.customer_id"

'Set the lock type so that the record is locked by ADO when it is deleted
rsDeleteEntry.LockType = 3

'Open the recordset with the SQL query 
rsDeleteEntry.Open strSQL, adoCon

'Delete the record from the database
rsDeleteEntry.Delete

'Reset server objects
rsDeleteEntry.Close
Set rsDeleteEntry = Nothing
Set adoCon = Nothing

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">

</head>
<body>
    <header>
        <div class="logo"><a href="#">SHOP</a></div>
        <div class="menu">
          <a href="#">
            <ion-icon name="close" class="close"></ion-icon>
          </a>
    
    
        </div>
    
        </div>
        <div class="heading">
          <ul>
            <li><a href="index.html" class="under">HOME</a></li>
            <li><a href="index.html" class="under">SHOP</a></li>
    
          </ul>
        </div>
        <div class="heading1">
          <ion-icon name="menu" class="ham"></ion-icon>
        </div>
      </header>
    <img src="img/33.jpg" alt="" style="height: 500px; width: 80%; margin-left: 10%;">   
    <button class="btn"><a href="index.html">HOME PAGE</a></button>
</body>
</html>