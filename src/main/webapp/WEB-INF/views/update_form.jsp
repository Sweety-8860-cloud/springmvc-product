  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./base.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>

<body>
  
<div class="container mt-3">

    <div class="row">
       <div class="col-md-6 offset-md-3">
                 <h1 class="text-center mb-3"> Change  Product Detail</h1>
                  <form action="${pageContext.request.contextPath }/handle-product" method="post">
                     <input type="hidden" name="id" value="${product.id}">
              <!-- Product Name -->

                <div class="form-group">
                    <label for="name">Product Name</label>

                    <input 
                        type="text" class="form-control"  id="name" 
                        name="name" aria-describedby="emailHelp"
                         placeholder="Enter product name"
                        value="${product.name }">
                </div>


                <!-- Product Description -->

                <div class="form-group mt-3">

                    <label for="description">Product Description</label>

                    <textarea
                        class="form-control"  id="description" name="description"
                        rows="5" placeholder="Enter the product description">${product.description}</textarea>

                </div>


                <!-- Product Price -->

                <div class="form-group mt-3">

                    <label for="price"> Product Price</label>

                    <input type="text" class="form-control"  id="price"
                      name="price" placeholder="Enter product price"
                      value="${product.price}">

                </div>


                <!-- Buttons -->

                <div class="container text-center mt-3">

                    <a href="${pageContext.request.contextPath}/"
                       class="btn btn-outline-danger"> Back
                    </a>

                    <button type="submit" class="btn btn-warning"> update </button>

                </div>

            </form>

        </div>

    </div>

</div>

</body>
</html>