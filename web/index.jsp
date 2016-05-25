<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="index.jsp" method="GET">
     <h1>CalculadoraIMC</h1>
     <p>Digite a altura:</p>
     <input type="text" name="altura">
     <p>Digite o peso:</p>
     <input type="text" name="peso"><br>
     <input type="submit" value="save">
     <br>
    <!-- 
        Abaixo de 17    Muito abaixo do peso
        Entre 17 e 18,49    Abaixo do peso
        Entre 18,5 e 24,99  Peso normal
        Entre 25 e 29,99    Acima do peso
        Entre 30 e 34,99    Obesidade I
        Entre 35 e 39,99    Obesidade II (severa)
        Acima de 40 Obesidade III (mórbida)
 -->
    <%  
    if(request.getParameter("altura") != null && request.getParameter("peso") != null){
         float altura = Float.parseFloat(request.getParameter("altura"));
         float peso = Float.parseFloat(request.getParameter("peso"));
         float result = 0;
         result = peso / (altura * altura);
         
    if(result < 17){ 
        out.println("Muito abaixo do peso");
    }else if(result > 17 && result < 18){
        out.println("Abaixo do peso");        
    }else if (result > 19 && result < 24.99){
        out.println("peso normal");
    }else if (result > 25 && result < 29){
        out.println("Acima do peso");
    }else if (result > 30 && result < 35){
        out.println("Obesidade I");
    }else if (result > 36 && result < 39){
        out.println ("Obesidade II");
    }else{
        out.println("Acima de 40 Obesidade III - morbida-");
    }
    
         
         out.println("resultado = "+ result);    
    }
    %>
</form> 
</body>
</html>