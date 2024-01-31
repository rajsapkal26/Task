<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body class="">
    <section class="bg-white">
        <nav class="container pt-2">
            <div class="d-flex justify-content-between align-items-center">
                <div class="">
                    <svg class="col-8" version="1.1" x="0px" y="0px" width="175.748px" height="42.52px" viewBox="0 0 175.748 42.52" enable-background="new 0 0 175.748 42.52">
                        <path fill-rule="evenodd" clip-rule="evenodd" fill="#333E48" d="M30.514,0.71c-0.034,0.003-0.066,0.008-0.056,0.056
                            C30.263,0.995,29.876,1.181,29.79,1.5c-0.148,0.548,0,1.568,0,2.427v36.459c0.265,0.221,0.506,0.465,0.725,0.734h6.187
                            c0.2-0.25,0.423-0.477,0.669-0.678V1.387C37.124,1.185,36.9,0.959,36.701,0.71H30.514z M117.517,12.731
                            c-0.232-0.189-0.439-0.64-0.781-0.734c-0.754-0.209-2.039,0-3.121,0h-3.176V4.435c-0.232-0.189-0.439-0.639-0.781-0.733
                            c-0.719-0.2-1.969,0-3.01,0h-3.01c-0.238,0.273-0.625,0.431-0.725,0.847c-0.203,0.852,0,2.399,0,3.725
                            c0,1.393,0.045,2.748-0.055,3.725h-6.41c-0.184,0.237-0.629,0.434-0.725,0.791c-0.178,0.654,0,1.813,0,2.765v2.766
                            c0.232,0.188,0.439,0.64,0.779,0.733c0.777,0.216,2.109,0,3.234,0c1.154,0,2.291-0.045,3.176,0.057v21.277
                            c0.232,0.189,0.439,0.639,0.781,0.734c0.719,0.199,1.969,0,3.01,0h3.01c1.008-0.451,0.725-1.889,0.725-3.443
                            c-0.002-6.164-0.047-12.867,0.055-18.625h6.299c0.182-0.236,0.627-0.434,0.725-0.79c0.176-0.653,0-1.813,0-2.765V12.731z
                             M135.851,18.262c0.201-0.746,0-2.029,0-3.104v-3.104c-0.287-0.245-0.434-0.637-0.781-0.733c-0.824-0.229-1.992-0.044-2.898,0
                            c-2.158,0.104-4.506,0.675-5.74,1.411c-0.146-0.362-0.451-0.853-0.893-0.96c-0.693-0.169-1.859,0-2.842,0h-2.842
                            c-0.258,0.319-0.625,0.42-0.725,0.79c-0.223,0.82,0,2.338,0,3.443c0,8.109-0.002,16.635,0,24.381
                            c0.232,0.189,0.439,0.639,0.779,0.734c0.707,0.195,1.93,0,2.955,0h3.01c0.918-0.463,0.725-1.352,0.725-2.822V36.21
                            c-0.002-3.902-0.242-9.117,0-12.473c0.297-4.142,3.836-4.877,8.527-4.686C135.312,18.816,135.757,18.606,135.851,18.262z
                             M14.796,11.376c-5.472,0.262-9.443,3.178-11.76,7.056c-2.435,4.075-2.789,10.62-0.501,15.126c2.043,4.023,5.91,7.115,10.701,7.9
                            c6.051,0.992,10.992-1.219,14.324-3.838c-0.687-1.1-1.419-2.664-2.118-3.951c-0.398-0.734-0.652-1.486-1.616-1.467
                            c-1.942,0.787-4.272,2.262-7.134,2.145c-3.791-0.154-6.659-1.842-7.524-4.91h19.452c0.146-2.793,0.22-5.338-0.279-7.563
                            C26.961,15.728,22.503,11.008,14.796,11.376z M9,23.284c0.921-2.508,3.033-4.514,6.298-4.627c3.083-0.107,4.994,1.976,5.685,4.627
                            C17.119,23.38,12.865,23.38,9,23.284z M52.418,11.376c-5.551,0.266-9.395,3.142-11.76,7.056
                            c-2.476,4.097-2.829,10.493-0.557,15.069c1.997,4.021,5.895,7.156,10.646,7.957c6.068,1.023,11-1.227,14.379-3.781
                            c-0.479-0.896-0.875-1.742-1.393-2.709c-0.312-0.582-1.024-2.234-1.561-2.539c-0.912-0.52-1.428,0.135-2.23,0.508
                            c-0.564,0.262-1.223,0.523-1.672,0.676c-4.768,1.621-10.372,0.268-11.537-4.176h19.451c0.668-5.443-0.419-9.953-2.73-13.037
                            C61.197,13.388,57.774,11.12,52.418,11.376z M46.622,23.343c0.708-2.553,3.161-4.578,6.242-4.686
                            c3.08-0.107,5.08,1.953,5.686,4.686H46.622z M160.371,15.497c-2.455-2.453-6.143-4.291-10.869-4.064
                            c-2.268,0.109-4.297,0.65-6.02,1.524c-1.719,0.873-3.092,1.957-4.234,3.217c-2.287,2.519-4.164,6.004-3.902,11.007
                            c0.248,4.736,1.979,7.813,4.627,10.326c2.568,2.439,6.148,4.254,10.867,4.064c4.457-0.18,7.889-2.115,10.199-4.684
                            c2.469-2.746,4.012-5.971,3.959-11.063C164.949,21.134,162.732,17.854,160.371,15.497z M149.558,33.952
                            c-3.246-0.221-5.701-2.615-6.41-5.418c-0.174-0.689-0.26-1.25-0.4-2.166c-0.035-0.234,0.072-0.523-0.045-0.77
                            c0.682-3.698,2.912-6.257,6.799-6.547c2.543-0.189,4.258,0.735,5.52,1.863c1.322,1.182,2.303,2.715,2.451,4.967
                            C157.789,30.669,154.185,34.267,149.558,33.952z M88.812,29.55c-1.232,2.363-2.9,4.307-6.13,4.402
                            c-4.729,0.141-8.038-3.16-8.025-7.563c0.004-1.412,0.324-2.65,0.947-3.726c1.197-2.061,3.507-3.688,6.633-3.612
                            c3.222,0.079,4.966,1.708,6.632,3.668c1.328-1.059,2.529-1.948,3.9-2.99c0.416-0.315,1.076-0.688,1.227-1.072
                            c0.404-1.031-0.365-1.502-0.891-2.088c-2.543-2.835-6.66-5.377-11.704-5.137c-6.02,0.288-10.218,3.697-12.484,7.846
                            c-1.293,2.365-1.951,5.158-1.729,8.408c0.209,3.053,1.191,5.496,2.619,7.508c2.842,4.004,7.385,6.973,13.656,6.377
                            c5.976-0.568,9.574-3.936,11.816-8.354c-0.141-0.271-0.221-0.604-0.336-0.902C92.929,31.364,90.843,30.485,88.812,29.55z">
                        </path>
                    </svg>
                </div>
                
                <div>
                    <div class="d-flex align-items-center justify-content-center">
                    	<a href="cart-details.jsp" class="d-flex text-decoration-none text-dark me-3 icon"><i class="bi bi-cart-plus fs-6 me-2"></i><span class="d-none d-md-block icon">Cart</span></a>
                        <p class="m-0  d-flex align-items-center icon" ><a href="index.jsp" class="text-decoration-none text-dark"><i class="bi bi-box-arrow-left me-2 fs-5"></i>Log out</a></p> 	
                      	  
                 	</div>
                </div>
            </div>
        </nav>
    </section>
    
    <div class="div3 d-none d-md-block">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-flex">
                    <p class="my-2 me-2 me-sm-3">Products</p>
                    <p class="my-2">About us</p>
                </div>
                <div class="d-flex">
                    <p class="my-2 me-2 me-sm-5">Enter search term</p>
                    <p class="my-2 ps-md-5"><i class="bi bi-search"></i></p>
                </div>
            </div>
        </div>
    </div>

    <section class="div1">
        <section class="container ">
            <div class="d-flex justify-content-between align-items-center div2">
                <div class="">
                    <p class="shop mb-2">SHOP TO GET WHAT YOU LOVE</p>
                    <p class="col-xxl-11 time">TIMEPIECES THAT MAKE A STATEMENT UP TO <b>40% OFF</b></p>
                    <div>
                        <button class="start1 border-0 rounded-2 px-sm-2 py-sm-1 px-md-3 px-lg-4 py-lg-2 px-xl- py-xl-"><a href="" class="text-white text-decoration-none start">Start Buying</a></button>
                    </div>
                </div>
                <img src="images/illustrations/Smartphones.webp" alt="" class="img1"/>
            </div>
        </section>
    </section>
    
    <section class="mb-5">
        <section class="container ">
            <div class="text-center py-5">
                <h1 class="product">Products</h1>
            </div>
    <%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
			
			Statement stat=conn.createStatement();
			
			ResultSet rs=stat.executeQuery("select * from products");
			
	%>
			<div class="container">
				<div class="row">
			<%
			while(rs.next()) {
				int id=rs.getInt(1);
				//String name=rs.getString(2);
				//String img=rs.getString(3);
				//int price=rs.getInt(4);
			%> 
				
					<figure class="col-sm-6 col-md-4 col-xl-3 p-3 mt-sm-3 border border-1">
						<img src="<%= rs.getString(2)%>" class="img-fluid"/>
						<figcaption>
							<div class="">
								<p class="laptop mb-1"><%=rs.getString(3) %></p>
								<p class="col-12 shop1 mb-1"><%=rs.getString(4)%></p>
							</div>
							<div class="d-flex justify-content-between align-items-center">
                        		<p class="laptop1">Rs <%=rs.getInt(5) %></p>
                    			<form action="CartInsert" method="post">
									<input type="hidden" value="<%= + rs.getInt(1) %>" name="pid">
									<button class="border border-1 rounded-5 btn btn-primary"><i class="bi bi-cart-plus fs-5"></i></button>
								</form>
                    		</div>
                    		
						</figcaption>
					</figure>
			<%
			}
			
			%>
				</div>
			</div>
			<%
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
		</section>
	</section>

    <section class="sec1 py-5"> 
        <section class="container">
            <div class="col-xxl-11 mx-auto px-4 py-5 mt-5 bg-white">
                <div class="text-center pb-5">
                    <h1 class="product">Best Offers</h1>
                </div>
                <div class="d-md-flex justify-content-between">
                    <div class="col-md-6 back1 me-md-1 d-flex flex-column justify-content-center p-5">
                        <p class="col-10 col-sm-4 mate text-white">MATEBOOK X PRO</p>
                        <p class="col-6 col-sm-3 col-md-5 col-lg-3 laptop1 text-white">Starting from <b class="ms-xl-3">Rs 4999</b></p>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12 back2 mt-2 mt-md-0 d-flex flex-column justify-content-center align-items-end px-3 py-5">
                            <p class="laptop1 bg-white p-1 rounded-2">GAMEZONE</p>
                            <p class="col-10 col-sm-6 col-xl-4 mate1">DUALSENSE WIRELESS CONTROLLER</p>
                        </div>
                        <div class="d-md-flex">
                            <div class="col-md-6 back3 mt-2 d-flex flex-column justify-content-center p-5 p-md-1">
                                <p class="col-11 col-sm-6 col-md-10 col-lg-9 col-xl-7 mate2 text-white">UPTO 30% OFF ON GADGETS</p>
                                <p class="col-5 col-lg-4 col-xxl-3 laptop1 text-white">Starting at <b>Rs 499</b></p>
                            </div>
                            <div class=" col-md-6 back4 mt-2 ms-md-1 d-flex flex-column justify-content-center p-5 p-md-1">
                                <p class="col-12 col-sm-6 mate3 text-white">BUMPER PROTECT COVER</p>
                                <p class="col-5 col-lg-4 col-xxl-3 laptop1 text-white">Starting at <b>Rs 99</b></p>
                            </div>
                        </div>
                    </div>      
                </div>
            </div>
        </section>
    </section>
    

    <section class="container mb-5">
        <div>
            <div class="text-center py-5">
                <h1 class="product">WHAT MAKES THE ESSENTIAL DIFFERENT? </h1>
                <p class="laptop1">EXPERIENCE HIGH PERFORMANCE AND SECURE</p>
            </div>
            <div class="d-lg-flex  text-center">
                <div class="col-lg-4 mt-3 mt-lg-5">
                    <img src="images/illustrations/ic12.webp" alt=""/>
                    <p class="laptop1 mb-0 mt-4">PERFECT CUT</p>
                    <p class="mate3">DUAL CAMERA</p>
                    <p class=" col-lg-10 col-xxl-8 mx-auto laptop">Tristique senectus et netus et malesuada ant reiet fames.</p>
                </div>
                <div class="col-lg-4 mt-5">
                    <img src="images/illustrations/ic13.avif" alt=""/>
                    <p class="laptop1 mb-0 mt-4">PRETTY</p>
                    <p class="col-11 col-lg-12 mx-auto mate3">INTELLIGENT PROCESSING</p>
                    <p class=" col-lg-10 col-xxl-8 mx-auto laptop">Consequat ac habit amet asse felis donec et odio pellentesque diam.</p>
                </div>
                <div class="col-lg-4 mt-5">
                    <img src="images/illustrations/ic11.webp" alt=""/>
                    <p class="laptop1 mb-0 mt-4">MOST POPULAR</p>
                    <p class="mate3">8GB DDR5 RAM</p>
                    <p class="col-11 col-lg-10  col-xxl-8 mx-auto laptop">Dictum varius duis at consectetur lorem donec massa sap faucibus.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="sec1">
        <div class="container pb-5">
            <div class="text-center py-5">
                <h1 class="product">RAISE YOUR EXPECTATIONS </h1>
                <p class="laptop1">REFINED VIEWING EXPERIENCE</p>
            </div>
            <div class="d-lg-flex align-items-center">
                <div class="col-lg-6">
                    <p class="mate3 col-11 mx-auto mx-xl-0"><b>42 FRONT CAMERA FOR PERFECT SHOT</b> </p>
                    <p class="mate4 col-11 col-xl-9 mx-auto mx-xl-0">Porem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui official.
                        Diam vulputate ut pharetra sit. Elit ut aliquam purus sit amet luctus venenatis lectus. Lorem dolor sed viverra ipsum nunc aliquet. Ut consequat semper viverra nam libero. Velit ut tortor aremn.</p>
                </div>
                <div class="col-lg-6">
                    <img src="images/illustrations/camera.webp" alt="" class="img2"/>
                </div>
            </div>
        </div>
    </section>

    <section>
        <footer class="d-lg-none">
            <div class="back py-5 mb-3">
                <div class="container">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                How to reach us
                            </button>
                          </h2>
                          <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <div class="d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-telephone-fill"></i></div>
                                    <div><p class="m-0 ps-3 para4">021 3456 789</p></div>
                                </div>
                                <div class="py-3 d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-envelope-fill"></i></div>
                                    <div class="m-0 ps-3 para4">cust@bestwatches.com</div>
                                </div>
                                <div class="d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-geo-alt-fill"></i></div>
                                    <div><p class="m-0 ps-3 para4">4200 Hamill Avenue, India</p></div>
                                </div>
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="flush-headingTwo">
                            <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                Service and Help
                            </button>
                          </h2>
                          <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <ul class="p-0 m-0">
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none">Company</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none">Career</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none">Shipping Cost</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none">FAQs</a>
                                    </li>
                                </ul>
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="flush-headingThree">
                            <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                Payments Method
                            </button>
                          </h2>
                          <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body"><span class="text-black cart1 bg-white">Invoice</span></div>
                          </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFour">
                              <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                Shipping Methods
                              </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                              <div class="accordion-body">
                                <div>
                                    <ul class="p-0 m-0 d-flex flex-wrap no-wrap">
                                        <li class="list-unstyled">
                                            <img src="images/illustrations/img1.jpeg" alt="DHL logo">
                                        </li>
                                        <li class="mx-2 list-unstyled">
                                            <img src="images/illustrations/img2.jpeg" alt="GLS logo">
                                        </li>
                                        <li class="me-sm-2 list-unstyled">
                                            <img src="images/illustrations/img3.jpeg" alt="NOX logo">
                                        </li>
                                        <li class="list-unstyled">
                                            <img src="images/illustrations/img4.jpeg" alt="DB logo">
                                        </li>
                                    </ul>
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="py-5 follow">
                        <h3 class="text-center five">Follow Us</h3>
                        <div class="col-sm-8 mx-auto col-md-7">
                            <div class="d-flex justify-content-around my-3">
                                <div class="curve fs-2"><i class="bi bi-facebook"></i></div>
                                <div class="curve fs-2"><i class="bi bi-linkedin"></i></div>
                                <div class="curve fs-2"><i class="bi bi-twitter"></i></div>
                                <div class="curve fs-2"><i class="bi bi-google"></i></div>
                                <div class="curve fs-2"><i class="bi bi-youtube"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    
        <footer class="d-none d-lg-block">
            <div class="py-5 back">
                <div class="container">
                    <div class="d-flex flex-wrap pb-3">
                        <div class="col-3 ps-4">
                            <h3 class="five">How to reach us</h3>
                            <div class="mt-4">
                                <div class="d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-telephone-fill"></i></div>
                                    <div><p class="m-0 ps-3 para4">021 3456 789</p></div>
                                </div>
                                <div class="py-3 d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-envelope-fill"></i></div>
                                    <div class="m-0 ps-3 para4">cust@bestwatches.com</div>
                                </div>
                                <div class="d-flex">
                                    <div class="d-flex align-items-center"><i class="bi bi-geo-alt-fill"></i></div>
                                    <div><p class="m-0 ps-3 para4">4200 Hamill Avenue, India</p></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 ps-5">
                            <h3 class="five">Service and Help</h3>
                            <div  class="mt-4">
                                <ul class="p-0 m-0">
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none ">Company</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none ">Career</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none ">Shipping Cost</a>
                                    </li>
                                    <li class="list-unstyled">
                                        <a href="#" class="product text-decoration-none ">FAQs</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-3 ps-5">
                            <h3 class="five"> Payments Method</h3>
                            <div class="mt-4">
                                <span class="text-black cart1 bg-white">Invoice</span>
                            </div>
                        </div>
                        <div class="col-3 ps-5">
                            <h3 class="five"> Shipping Methods</h3>
                            <div  class="mt-4">
                                <ul class="p-0 m-0 d-flex flex-wrap no-wrap">
                                    <li class="list-unstyled">
                                        <img src="images/illustrations/img1.jpeg" alt="DHL logo">
                                    </li>
                                    <li class="mx-2 list-unstyled">
                                        <img src="images/illustrations/img2.jpeg" alt="GLS logo">
                                    </li>
                                    <li class="me-sm-2 list-unstyled">
                                        <img src="images/illustrations/img3.jpeg" alt="NOX logo">
                                    </li>
                                    <li class="list-unstyled">
                                        <img src="images/illustrations/img4.jpeg" alt="DB logo">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="py-5 follow">
                        <h3 class="text-center five">Follow Us</h3>
                        <div class="col-lg-5 col-xl-4 mx-auto">
                            <div class="d-flex justify-content-around my-3">
                                <div class="curve fs-2"><i class="bi bi-facebook"></i></div>
                                <div class="curve fs-3"><i class="bi bi-linkedin"></i></div>
                                <div class="curve fs-2"><i class="bi bi-twitter"></i></div>
                                <div class="curve fs-2"><i class="bi bi-google"></i></div>
                                <div class="curve fs-2"><i class="bi bi-youtube"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>
    




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="javascript/script.js"></script>
</body>
</html>
