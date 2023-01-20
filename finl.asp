<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style1.css">

    <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        
        th, td {
          padding: 8px;
          text-align: left;
          border-bottom: 1px solid #ddd;
        }
        
        footer {
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
          text-align: center;
          background-color: rgb(0, 0, 0);
          color: white;
        }
        </style>
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

    <%
            Dim conn
            Dim sql
            Set conn = Server.CreateObject("ADODB.Connection")
            conn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("products.mdb")
            set rs = Server.CreateObject("ADODB.recordset")
            sql="SELECT  orders.customer_id, orders.product_id ,orders.product_count FROM orders WHERE orders.customer_id = '" &request.form("customer_id") &  "'" 
 
            rs.Open sql, conn
            %>


            <table border="1" width="100%;">
              <tr style="background-color:rgb(240, 197, 6);">
              <%for each x in rs.Fields
                  response.write("<th>" & x.name & "</th>")
              next%>
              </tr>
              <%do until rs.EOF%>
                  <tr>
                  <%for each x in rs.Fields%>
                     <td><%Response.Write(x.value)%></td>
                  <%next
                  rs.MoveNext%>
                  </tr>
              <%loop
              rs.close
              conn.close
              %>

              <tr>
                <td><button class="btn" ><a href="index.html">HOME PAGE</a></button></td>
                <td>
                  <form action="delete.asp">
                    <button class="btn" type="submit"  name= "submit" value="submit" >delete</button>
                  </form></td>

              </tr>
              </table>
            
              <footer>
                <div class="footer">
                  <h1>SHOP</h1>
                </div>
                
              </footer>   
</body>
</html>