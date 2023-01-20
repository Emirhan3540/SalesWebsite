<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>buy</title>
    <link rel="stylesheet" href="style1.css">

    <style>
table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 20px;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  text-align: center;
}


footer {
        position: relative;
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

      <img src="img/22b.jpg" style="height: 500px; width: 80%; margin-left: 10%;">     

       
            <form action="finl.asp" method="post"> 
              <%
            'Dimension variables
            Dim adoCon 			'Holds the Database Connection Object
            Dim rsAddComments	'Holds the recordset for the new record to be added to the database
            Dim strSQL			'Holds the SQL query for the database
            Dim rsAddComments2
            Dim strSQL2
            Dim total

            Set adoCon = Server.CreateObject("ADODB.Connection")

            'Set an active connection to the Connection object
            adoCon.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("products.mdb")


            Set rsAddComments = Server.CreateObject("ADODB.Recordset")
            Set rsAddComments2 = Server.CreateObject("ADODB.Recordset")

            strSQL = "SELECT customer_id, first_name , last_name , email , phone FROM customer;"

            strSQL2 = "SELECT  customer_id, product_id ,product_count  FROM orders;"

            rsAddComments.CursorType = 2
            rsAddComments.LockType = 3

            rsAddComments.Open strSQL, adoCon
            rsAddComments.AddNew

            rsAddComments2.CursorType = 2
            rsAddComments2.LockType = 3

            rsAddComments2.Open strSQL2, adoCon
            rsAddComments2.AddNew


            customerid = (request.form("customer_id"))
            SHOES = (request.form("SHOES"))
            MENs = (request.form("MENs"))
            JEANS = (request.form("JEANS"))
            WATCH = (request.form("WATCH"))
            SHOES = (request.form("SHOES"))
            SMART = (request.form("SMART"))
            TELEVISION = (request.form("TELEVISION"))
            HOODIES = (request.form("HOODIES"))
            DINNER = (request.form("DINNER"))
            BLANKETS = (request.form("BLANKETS"))
            LAPTOP = (request.form("LAPTOP"))
            MICROWAVE = (request.form("MICROWAVE"))
            COFFEE = (request.form("COFFEE"))
            BED = (request.form("BED"))
            AIR = (request.form("AIR"))
            BOOK = (request.form("BOOK"))
            BAG = (request.form("BAG"))
            SAREES = (request.form("SAREES"))
            MACHINE = (request.form("MACHINE"))


            if SHOES > "0" then
              total = total + (SHOES*5)
            end if
            if MENs >"0" then
              total = total + (MENs*6.34)
            end if
            if JEANS >"0" then
              total = total + (JEANS*9)
            end if
            if WATCH > "0"then
              total = total + (WATCH*9.1)
            end if
            if SMART > "0" then
              total = total + (SMART*20)
            end if
            if TELEVISION > "0" then
              total = total + (TELEVISION*18)
            end if
            if HOODIES > "0" then
              total = total + (HOODIES*6.7)
            end if
            if DINNER > "0" then
              total = total + (DINNER*10)
            end if
            if BLANKETS > "0" then
              total = total + (BLANKETS*9.9)
            end if
            if LAPTOP > "0" then
              total = total + (LAPTOP*99)
            end if
            if MICROWAVE > "0" then
              total = total + (MICROWAVE*30)
            end if
            if COFFEE > "0" then
              total = total + (COFFEE*29.7)
            end if
            if BED > "0" then
              total = total + (BED*100)
            end if
            if AIR > "0" then
              total = total + (AIR*78)
            end if
            if BOOK > "0" then
              total = total + (BOOK*9)
            end if
            if BAG > "0" then
              total = total + (BAG*36.5)
            end if
            if SAREES > "0" then
              total = total + (SAREES*25.6)
            end if
            if WASHING > "0" then
              total = total + (WASHING*56)
            end if


            rsAddComments.Fields("customer_id") = Request.Form("customer_id")
            rsAddComments.Fields("first_name") = Request.Form("first_name")
            rsAddComments.Fields("last_name") = Request.Form("last_name")
            rsAddComments.Fields("email") = Request.Form("email")
            rsAddComments.Fields("phone") = Request.Form("phone")

            if SHOES > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") = 1
                rsAddComments2.Fields("product_count") = SHOES

            end if

            if MENs > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") = 2
                rsAddComments2.Fields("product_count") = MENs

            end if

            if JEANS > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =3
                rsAddComments2.Fields("product_count") = JEANS
            end if

            if WATCH > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =4
                rsAddComments2.Fields("product_count") = WATCH

            end if

            if SMART > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =5
              rsAddComments2.Fields("product_count") = SMART

            end if

            if TELEVISION > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =6
                rsAddComments2.Fields("product_count") = TELEVISION

            end if

            if HOODIES > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =7
                rsAddComments2.Fields("product_count") = HOODIES

            end if
            if DINNER > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =8
                rsAddComments2.Fields("product_count") = DINNER

            end if

            if BLANKETS > "0" then
                  rsAddComments2.Fields("customer_id") = customerid
                  rsAddComments2.Fields("product_id") =9
                  rsAddComments2.Fields("product_count") = BLANKETS
            end if

            if LAPTOP > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =10
                rsAddComments2.Fields("product_count") = LAPTOP

            end if

            if MICROWAVE > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =11
                rsAddComments2.Fields("product_count") = MICROWAVE

            end if

            if COFFEE > "0" then
                rsAddComments2.Fields("customer_id") = customerid
                rsAddComments2.Fields("product_id") =12
                rsAddComments2.Fields("product_count") = COFFEE

            end if

            if BED > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =13
              rsAddComments2.Fields("product_count") = BED

            end if

            if AIR > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =14
              rsAddComments2.Fields("product_count") = AIR

            end if

            if BOOK > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =15
              rsAddComments2.Fields("product_count") = BOOK

            end if

            if BAG > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =16
              rsAddComments2.Fields("product_count") = BAG

            end if

            if SAREES > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =17
              rsAddComments2.Fields("product_count") = SAREES

            end if

            if WASHING > "0" then
              rsAddComments2.Fields("customer_id") = customerid
              rsAddComments2.Fields("product_id") =1
              rsAddComments2.Fields("product_count") = WASHING

            end if

                %>
                <table>
                  <tr style="background-color: rgb(240, 197, 6);">
                    <th><%response.write(("First Name"))%></th>
                    <th><%response.write(("Last Name"))%></th>
                    <th><%response.write(("email"))%></th>
                  </tr>
                <tr>
                  <td>
                    <%response.write((Request.Form("first_name")))%>
                  </td>
                  <td>
                    <%response.write((Request.Form("last_name")))%>
                  </td>
                  <td>
                    <%response.write((Request.Form("email")))%>
                  </td>
                </tr>          
              </table>
              <table>


                <tr style="background-color:rgb(240, 197, 6);">
                  <th>Items</th> 
                  <th>Count</th> 
                </tr>


                

	



                <%
	
                if (SHOES > "0") then
                  response.write("<tr><td>")
                  response.write("SHOES")
                  response.write("</td>")
                  response.write("<td>")
                  response.write(SHOES*5 &"$")
                  response.write("</tr>")
                  response.write("</td></tr>")
                End If
            
                %>

                <%
                if (MENs > "0") then
                  response.write("<tr><td>")
                  response.write("MENs")
                  response.write("</td>")
                  response.write("<td>")
                  response.write(MENs*6.34 &"$")
                  response.write("</tr>")
                  response.write("</td></tr>")
                End If
            
                %>

                <%
                if (JEANS > "0") then
                  response.write("<tr><td>")
                  response.write("JEANS")
                  response.write("</td>")
                  response.write("<td>")
                  response.write(JEANS*9 &"$")
                  response.write("</tr>")
                  response.write("</td></tr>")
                End If
            
                %>

              
                <%
                if (WATCH > "0") then
                  response.write("<tr><td>")
                  response.write("WATCH")
                  response.write("</td>")
                  response.write("<td>")
                  response.write(WATCH*9.1 &"$")
                  response.write("</tr>")
                  response.write("</td></tr>")
                End If
            
                %>

                <%
                if (SMART > "0") then
                  response.write("<tr><td>")
                  response.write("SMART")
                  response.write("</td>")
                  response.write("<td>")
                  response.write(SMART*20 &"$")
                  response.write("</tr>")
                  response.write("</td></tr>")
                End If
            
                %>


              <%
              if (TELEVISION > "0") then
                response.write("<tr><td>")
                response.write("TELEVISION")
                response.write("</td>")
                response.write("<td>")
                response.write(TELEVISION*18 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (HOODIES > "0") then
                response.write("<tr><td>")
                response.write("HOODIES")
                response.write("</td>")
                response.write("<td>")
                response.write(HOODIES*6.7 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (DINNER > "0") then
                response.write("<tr><td>")
                response.write("DINNER")
                response.write("</td>")
                response.write("<td>")
                response.write(DINNER*10 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (BLANKETS > "0") then
                response.write("<tr><td>")
                response.write("BLANKETS")
                response.write("</td>")
                response.write("<td>")
                response.write(BLANKETS*9.9 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>


              <%
              if (LAPTOP > "0") then
                response.write("<tr><td>")
                response.write("LAPTOP")
                response.write("</td>")
                response.write("<td>")
                response.write(LAPTOP*99 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (MICROWAVE > "0") then
                response.write("<tr><td>")
                response.write("MICROWAVE")
                response.write("</td>")
                response.write("<td>")
                response.write(MICROWAVE*30 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (COFFEE > "0") then
                response.write("<tr><td>")
                response.write("COFFEE")
                response.write("</td>")
                response.write("<td>")
                response.write(COFFEE*29.7 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <%
              if (BED > "0") then
                response.write("<tr><td>")
                response.write("BED")
                response.write("</td>")
                response.write("<td>")
                response.write(BED*100 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>


              <%
              if (AIR > "0") then
                response.write("<tr><td>")
                response.write("AIR")
                response.write("</td>")
                response.write("<td>")
                response.write(AIR*78 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>


              <%
              if (BOOK > "0") then
                response.write("<tr><td>")
                response.write("BOOK")
                response.write("</td>")
                response.write("<td>")
                response.write(BOOK*9 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>


              <%
              if (BAG > "0") then
                response.write("<tr><td>")
                response.write("BAG")
                response.write("</td>")
                response.write("<td>")
                response.write(BAG*36.5 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>


              <%
              if (SAREES > "0") then
                response.write("<tr><td>")
                response.write("SAREES")
                response.write("</td>")
                response.write("<td>")
                response.write(SAREES*25.6 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>
 

              <%
              if (SAREES > "0") then
                response.write("<tr><td>")
                response.write("WASHING")
                response.write("</td>")
                response.write("<td>")
                response.write(WASHING*56 &"$")
                response.write("</tr>")
                response.write("</td></tr>")
              End If
          
              %>

              <tr style="background-color: rgb(255, 236, 153);">
                <td>
                  <%response.write(("total"))%>

                </td>
                <td>
                  <%response.write((total  &"$"))%>
                </td>
              </tr>
              </table>

          
                
                <input type="hidden" name="customer_id" value="<%Response.Write(rsAddComments("customer_id"))%>"/>

                <button class="btn"  type="submit"  name= "submit" value="submit" >confirm</button>
                <%
                rsAddComments.Update
                rsAddComments2.Update
                'Reset server objects
                rsAddComments.Close
                Set rsAddComments = Nothing
                rsAddComments2.Close
                Set rsAddComments2 = Nothing
                %>
                <footer>
                  <div class="footer">
                    <h1>SHOP</h1>
                  </div>   
                </footer>     
                </body>
                </html>