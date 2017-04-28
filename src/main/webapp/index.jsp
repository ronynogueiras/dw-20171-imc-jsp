<!doctype html>

<html lang="pt-BR">
<head>
  <meta charset="utf-8">

  <title>Calculadora IMC</title>
  <meta name="description" content="Calculadora IMC">
  <meta name="author" content="SitePoint">

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->
</head>

<body>
  <div class="container">
      <div class="row">
          <div class="col-xs-12">
              <form method="GET">
                  <div class="form-group">
                    <label for="1">Peso</label>
                    <input type="text" name="peso" id="1" class="form-control">
                </div>
                  <div class="form-group">
                    <label for="2">Altura</label>
                    <input type="text" name="altura" id="2" class="form-control">
                </div>
                <button class="btn btn-primary btn-lg">Calcular</button>
              </form>
          </div>
      </div> 
      <%
        String param1 = request.getParameter("peso");
        String param2 = request.getParameter("altura");

        if (param1 != null && param2 != null) {
            
            param1 = param1.replace(",",".");
            param2 = param2.replace(",",".");

            Double peso = Double.parseDouble(param1);
            Double altura = Double.parseDouble(param2); 
            
            Double imc = peso / Math.pow(altura,2);
      %>
        <br>
        <div class="alert alert-success">
            <p class="text-center">Seu IMC e de <% out.print(imc); %></p>
        </div>
      <%
        }
      %>
  </div>
</body>
</html>