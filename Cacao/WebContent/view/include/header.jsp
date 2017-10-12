<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<style type="text/css">
#imaginary_container{
    margin-top:20%; /* Don't copy this */
}
.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
   border-right:0; 
   box-shadow:0 0 0; 
   border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}



.mega-dropdown {
  position: static !important;
}
.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}
.mega-dropdown-menu > li > ul {
  padding: 0;
  margin: 0;
}
.mega-dropdown-menu > li > ul > li {
  list-style: none;
}
.mega-dropdown-menu > li > ul > li > a {
  display: block;
  color: #222;
  padding: 3px 5px;
}
.mega-dropdown-menu > li ul > li > a:hover,
.mega-dropdown-menu > li ul > li > a:focus {
  text-decoration: none;
}
.mega-dropdown-menu .dropdown-header {
  font-size: 18px;
  color: #ff3546;
  padding: 5px 60px 5px 5px;
  line-height: 30px;
}

.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right {
  font-size: 12px;
  background-color: #fff;
  line-height: 30px;
  text-shadow: none;
  color: #333;
  border: 1px solid #ddd;
}
</style>
</head>
<body>
   <header id="navigation" class="navbar-fixed-top">
      <div class="container">

         <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse"
               data-target=".navbar-collapse">
               <span class="sr-only">Toggle navigation</span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <h1 class="navbar-brand" style="margin-left: -10em;margin-top: 0.5em" >
               <a href="/Cacao/Main?cmd=main-page"" class="link_logo">
                  <span class="tit_friends tit_logo" >KAKAO FRIENDS</span>         
               </a>
            </h1>
            <!-- /logo -->
         </div>
         <!-- main nav -->
         <nav class="collapse navigation navbar-collapse navbar-center"
            role="navigation">
            <ul id="nav" class="nav navbar-nav">
                  <li class="dropdown mega-dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Character <span class="caret"></span></a>            
            <ul class="dropdown-menu mega-dropdown-menu">
               
               <li class="col-sm-3">
                  <ul>
                     <li>character1</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character2</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character3</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character4</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character5</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character6</li>
                  </ul>
               </li>
                  <li class="col-sm-3">
                  <ul>
                     <li>character7</li>
                  </ul>
               </li>
            </ul>            
         </li>
         
         
         
            <li class="dropdown mega-dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Category <span class="caret"></span></a>            
            <ul class="dropdown-menu mega-dropdown-menu">
               
               <li class="col-sm-3">
                  <ul>
                     <li class="dropdown-header">Living</li>
                     <li><a href="#">Auto Carousel</a></li>
                            <li><a href="#">Carousel Control</a></li>
                            <li><a href="#">Left & Right Navigation</a></li>
                     <li><a href="#">Four Columns Grid</a></li>
                     <li class="divider"></li>
                     <li class="dropdown-header">Tech</li>
                            <li><a href="#">Glyphicon</a></li>
                     <li><a href="#">Google Fonts</a></li>
                  </ul>
               </li>
               <li class="col-sm-3">
                  <ul>
                     <li class="dropdown-header">Shoes</li>
                     <li><a href="#">Navbar Inverse</a></li>
                     <li><a href="#">Pull Right Elements</a></li>
                     <li><a href="#">Coloured Headers</a></li>                            
                     <li><a href="#">Primary Buttons & Default</a></li>                     
                  </ul>
               </li>
            </ul>            
         </li>
         
         
         
         
         <li class="dropdown mega-dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">MyPage <span class="caret"></span></a>            
            <ul class="dropdown-menu mega-dropdown-menu">
               
               <li class="col-sm-3">
                  <ul>
                     <li>Features</li>
                     <li><a href="#">Auto Carousel</a></li>
                            <li><a href="#">Carousel Control</a></li>
                            <li><a href="#">Left & Right Navigation</a></li>
                     <li><a href="#">Four Columns Grid</a></li>

                  </ul>
               </li>
            </ul>            
         </li>
            <li class="dropdown mega-dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown">Customer <span class="caret"></span></a>            
            <ul class="dropdown-menu mega-dropdown-menu">
               <li class="col-sm-3">
                   <ul>
                     <li>Features</li>
                     <li><a href="#">Auto Carousel</a></li>
                            
                  </ul>
               </li>
            
                   
            </ul>            
         </li>
            <li><a href="#">store</a></li>
            <li><a href="#">museum</a></li>
         
            </ul>
         <ul class="nav navbar-nav navbar-right">
        
         <li>
        
       
           
                <div class="input-group stylish-input-group" style="width:10em; margin-top:15%">
                    <input type="text" class="form-control"  placeholder="Search"  >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
           
       
    </li>
         
       
         
        <li><a href="#">login</a></li>
      </ul>   
         
        
        
      
      
         </nav>
         
         <!-- /main nav -->
      </div>

   </header>
   <!--
        End Fixed Navigation
        ==================================== -->
        <!-- main jQuery -->
   <script src="js/vendor/jquery-1.11.1.min.js"></script>
   <!-- Bootstrap -->
   <script src="js/bootstrap.min.js"></script>
   <!-- jquery.nav -->
   <script src="js/jquery.nav.js"></script>
   <!-- Portfolio Filtering -->
   <script src="js/jquery.mixitup.min.js"></script>
   <!-- Fancybox -->
   <script src="js/jquery.fancybox.pack.js"></script>
   <!-- Parallax sections -->
   <script src="js/jquery.parallax-1.1.3.js"></script>
   <!-- jQuery Appear -->
   <script src="js/jquery.appear.js"></script>
   <!-- countTo -->
   <script src="js/jquery-countTo.js"></script>
   <!-- owl carousel -->
   <script src="js/owl.carousel.min.js"></script>
   <!-- WOW script -->
   <script src="js/wow.min.js"></script>
   <!-- theme custom scripts -->
   <script src="js/main.js"></script>

</body>
</html>