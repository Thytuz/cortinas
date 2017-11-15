<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body> 
            <script src="js/responsiveslides.min.js"></script>
            <script>
                $(function () {
                    $("#slider").responsiveSlides({
                        auto: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        pager: false,
                    });
                });
            </script>
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
            <!--end menu-->
            <!---->	
            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider">
                        <li>
                            <div class="banner1">				  
                                <div class="banner-info">
                                    <h3>Morbi lacus hendrerit efficitur.</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner2">
                                <div class="banner-info">
                                    <h3>Phasellus elementum tincidunt.</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner3">
                                <div class="banner-info">
                                    <h3>Maecenas interposuere volutpat.</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!---->
            <script src="bootstrap/js/bootstrap.js"></script>
            <div class="items">
                <!---728x90--->
                <div class="container">
                    <div class="items-sec">
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/_89392793_037e_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 12000</p>
                                    <span class="pric1"><del>Rs 18000</del></span>
                                    <span class="disc">[12%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/abracadeira_franjas_chocolate_89360145_d0e0_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 10000</p>
                                    <span class="pric1"><del>Rs 14000</del></span>
                                    <span class="disc">[14%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/_89392793_037e_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 8500</p>
                                    <span class="pric1"><del>Rs 9500</del></span>
                                    <span class="disc">[10%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/abracadeira_franjas_chocolate_89360145_d0e0_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 12000</p>
                                    <span class="pric1"><del>Rs 18000</del></span>
                                    <span class="disc">[12%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="items-sec btm-sec">
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/_89389860_4e08_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 500</p>
                                    <span class="pric1"><del>Rs 650</del></span>
                                    <span class="disc">[8%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/abracadeira_franjas_chocolate_89360145_d0e0_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 400</p>
                                    <span class="pric1"><del>Rs 750</del></span>
                                    <span class="disc">[12%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/_89389860_4e08_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 800</p>
                                    <span class="pric1"><del>Rs 1200</del></span>
                                    <span class="disc">[12%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 feature-grid">
                            <a href="product.html"><img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/abracadeira_franjas_chocolate_89360145_d0e0_600x600.jpg" alt=""/>	
                                <div class="arrival-info">
                                    <h4>Item #1</h4>
                                    <p>Rs 600</p>
                                    <span class="pric1"><del>Rs 1200</del></span>
                                    <span class="disc">[50%]</span>
                                </div>
                                <div class="viw">
                                    <a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!---728x90--->
            </div>
            <!---->
            <div class="offers">
                <div class="container">
                    <h3>Maiores descontos</h3>
                    <!---728x90--->
                    <div class="offer-grids">
                        <div class="col-md-6 grid-left">
                            <a href="#"><div class="offer-grid1">
                                    <div class="ofr-pic">
                                        <img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/abracadeira_franjas_chocolate_89360145_d0e0_600x600.jpg" class="img-responsive" alt=""/>
                                    </div>
                                    <div class="ofr-pic-info">
                                        <h4>Emergency Lights <br>& Led Bulds</h4>
                                        <span>UP TO 60% OFF</span>
                                        <p>Shop Now</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div></a>
                        </div>
                        <div class="col-md-6 grid-left">
                            <a href="#"><div class="offer-grid1">
                                    <div class="ofr-pic">
                                        <img src="https://s3-sa-east-1.amazonaws.com/leroy-production//uploads/img/products/_89392793_037e_600x600.jpg" class="img-responsive" alt=""/>
                                    </div>
                                    <div class="ofr-pic-info">
                                        <h4>Emergency Lights <br>& Led Bulds</h4>
                                        <span>UP TO 60% OFF</span>
                                        <p>Shop Now</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        <jsp:include page="templates/subscribe.html"></jsp:include>
            <div class="footer">
                <div class="container">
                    <div class="footer-grids">
                        <div class="col-md-3 about-us">
                            <h3>Sobre nós</h3>
                            <p>Maecenas nec auctor sem. Vivamus porttitor tincidunt elementum nisi a, euismod rhoncus urna. Curabitur scelerisque vulputate arcu eu pulvinar. Fusce vel neque diam</p>
                        </div>
                        <div class="col-md-3 ftr-grid">
                            <h3>Informações</h3>
                            <ul class="nav-bottom">
                                <li><a href="#">Track Order</a></li>
                                <li><a href="#">New Products</a></li>
                                <li><a href="#">Location</a></li>
                                <li><a href="#">Our Stores</a></li>
                                <li><a href="#">Best Sellers</a></li>	
                            </ul>					
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>
