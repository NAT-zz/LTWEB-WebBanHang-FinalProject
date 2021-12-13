<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglib.jsp"%>
   <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="home">Home</a></li>
            <li><a href="product?bid=0">Product</a></li>
            <li class="active">Detail</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
            <ul class="list-group margin-bottom-25 sidebar-menu">
            <c:forEach items="${ allBrand }" var="b">
              <li class="list-group-item clearfix"><a href="product?bid=${ b.bId }"><i class="fa fa-angle-right"></i>${b.bName}</a></li>
             </c:forEach>
             </ul>

            <div class="sidebar-products clearfix">
              <h2>Bestsellers</h2>
              <div class="item">
                <a href="shop-item.html"><img src="${ url }/frontend/pages/img/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$31.00</div>
              </div>
              <div class="item">
                <a href="shop-item.html"><img src="${ url }/frontend/pages/img/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$23.00</div>
              </div>
              <div class="item">
                <a href="shop-item.html"><img src="${ url }/frontend/pages/img/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$86.00</div>
              </div>
            </div>
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                    <img src="${ product.pImage }" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="${ product.pImage }">
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                  <h1>${ product.pName }</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>${ product.pPrice }</strong>
                    </div>
                    <div class="availability">
                      Availability: <strong>${ product.pAmount }</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>${ productdetail.description }</p>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="quantity" name="quan" type="text" value="1" readonly class="form-control input-sm">
                    </div>
                    <a href="cart-add?pid=${product.pId}&quantity=('#quantity').val()" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li><a href="#Description" data-toggle="tab">Description</a></li>
                    <li><a href="#Information" data-toggle="tab">Information</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade" id="Description">
                      <p>${ productdetail.description }</p>
                    </div>
                    <div class="tab-pane fade" id="Information">
                      <table class="datasheet">
                        <tr>
                          <th colspan="2">Additional features</th>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">OS: </td>
                          <td>${ productdetail.os }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Screen: </td>
                          <td>${ productdetail.screen }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">CPU: </td>
                          <td>${ productdetail.chip }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">RAM: </td>
                          <td>${ productdetail.ram }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">ROM: </td>
                          <td>${ productdetail.rom }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Weight: </td>
                          <td>${ productdetail.weight }</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Warranty: </td>
                          <td>${ productdetail.timeWarranty } Months</td>
                        </tr>
                      </table>
                    </div>
                   </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
