<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="OnlineBooKShopProject.Views.start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
#hero {
  width: 100%;
  height: 60vh;
  position: relative;
  background: url("../img/hero-carousel/1.jpg") no-repeat;
  background-size: cover;
  padding: 0;
}

#hero .hero-content {
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
  z-index: 10;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  text-align: center;
}

#hero .hero-content h2 {
  color: #0c2e8a;
  margin-bottom: 30px;
  font-size: 64px;
  font-weight: 700;
}

#hero .hero-content h2 span {
  color: #50d8af;
  text-decoration: underline;
}

@media (max-width: 767px) {
  #hero .hero-content h2 {
    font-size: 34px;
  }
}

#hero .hero-content .btn-get-started,
#hero .hero-content .btn-projects {
  font-family: "Raleway", sans-serif;
  font-size: 15px;
  font-weight: bold;
  letter-spacing: 1px;
  display: inline-block;
  padding: 10px 32px;
  border-radius: 2px;
  transition: 0.5s;
  margin: 10px;
  color: #fff;
}

#hero .hero-content .btn-get-started {
  background: #0c2e8a;
  border: 2px solid #0c2e8a;
}

#hero .hero-content .btn-get-started:hover {
  background: none;
  color: #0c2e8a;
}

#hero .hero-content .btn-projects {
  background: #50d8af;
  border: 2px solid #50d8af;
}

#hero .hero-content .btn-projects:hover {
  background: none;
  color: #50d8af;
}

#hero .hero-slider {
  z-index: 8;
  height: 60vh;
}

#hero .hero-slider::before {
  content: "";
  background-color: rgba(255, 255, 255, 0.7);
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
  z-index: 7;
}

#hero .hero-slider .swiper-slide {
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  transition-property: opacity;
}

 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="hero">

        <div class="hero-content" data-aos="fade-up">
            <h2>Select from below!</h2>
            <div>
                <a href="login.aspx" class="btn-get-started scrollto">Admin</a>
                <a href="sellerlogin.aspx" class="btn-projects scrollto">Sellers</a>
            </div>
        </div>

        <div class="hero-slider swiper">
            <div class="swiper-wrapper">
              </div>
            
        </div>

    </section>
        </div>
    </form>
</body>
</html>
