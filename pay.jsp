<!DOCTYPE html>
<html lang="en">
<head>
    <title>Payment</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="payment/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="payment/jquery.min.js"></link>
    <link rel="stylesheet" type="text/css" href="payment/bootstrap.min.js"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        #form1 {
                  position: relative;
                  right:100px;
        }
        .icon-container {font-size: 26px;}
      
    </style>
</head>
<body>
   
 
<div class="container-fluid">
    <h2>Payment </h2>
    <div class="panel-group">
      <div class="panel panel-default">
        <div class="panel-heading">Purchase Details</div>
        <div class="panel-body">
            <div class="col-md-4" ><b>Id</b><br><% out.print(session.getAttribute("nod2")); %></div>
            <div class="col-md-4"><b>Package</b><br><% out.print(session.getAttribute("nod4"));out.print('/'); out.print(session.getAttribute("nod5")); %></div>
        
            <div class="col-md-4"><b>Amount</b><br><% out.print(session.getAttribute("x")); %></div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading">Payment Details</div>
        <div class="panel-body">
            <div class="row">
                <div class="container">
                    <form role="form" class="form-horizontal" id="form1" action="payconnect.jsp">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Cardholder Name:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="t1" placeholder="Your Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Card Number:</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="t2" placeholder="card number">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Card Type:</label>
                        <div class="col-sm-8">
                            <select class="form-control" id="card_type">
                                <option>Visa</option>
                                <option>MasterCard</option>
                                <option>American Express</option>
                                <option>slicepay</option>
                                <option>paymt</option>
                            </select>
                        </div>
                        <div class="icon-container">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:blue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                <i class="fa fa-cc-discover" style="color:orange;"></i>
                              </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Payment Type:</label>
                        <div class="col-sm-8">
                            <select class="form-control" id="payment_type">
                                <option>Debit Card</option>
                                <option>Credit Card</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Card Expiry Date:</label>
                        <div class="col-sm-5">
                            <input type="month" class="form-control" name="t3" placeholder="Your Expiry Date of card">
                        </div>
                        <label class="control-label col-sm-1" for="name">CVC:</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" name="t4" placeholder="***">
                        </div>
                       
                    </div>
                    <div class="form-group">
                        <div class="btn-group col-md-10">
                          <button type="submit" class="btn btn-success pull-right col-md-2">Submit </button>
                          <button type="cancel" class="btn btn-success pull-right col-md-2">Cancel  </button>
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>


</body>
</html>