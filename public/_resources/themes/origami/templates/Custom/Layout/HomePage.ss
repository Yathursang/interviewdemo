
<section id="hero" class="hero d-flex align-items-center">

    <div class="container">

        <div class="row">
            <div class="col-lg-6 d-flex flex-column justify-content-center">
                <h1 data-aos="fade-up" >$HeroTitle</h1>
                <h2 data-aos="fade-up" data-aos-delay="400" >$HeroSubTitle</h2>
                <div data-aos="fade-up" data-aos-delay="600" >
                    <div class="text-center text-lg-start">
                        <a href="#about" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                            <span>Get Started</span>
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 hero-img" >
                <% with $Photo %>
                <img src="$ThemeDir/img/hero-img.png" class="img-fluid" alt="">
                <% end_with %>
            </div>
        </div>
    </div>

</section>

        <section id="team" class="team">

            <div class="container" data-aos="fade-up">

                <header class="section-header">
                    <h2>Team</h2>
                    <p>Our hard working team</p>
                    $Form
                </header>

                <div class="row gy-4">
                    <% loop $TeamDetails %>
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                        <div class="member">
                            <div class="member-img">
                                <img src="$TeamPhoto.URL" class="img-fluid" alt="">
                                <div class="social">
                                    <a href="$TwitterLink"><i class="bi bi-twitter"></i></a>
                                    <a href="$FacebookLink"><i class="bi bi-facebook"></i></a>
                                    <a href="$InstagramLink"><i class="bi bi-instagram"></i></a>
                                    <a href="$LinkinLink"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>$Name</h4>
                                <span>$Title</span>
                                <p>$Description</p>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>


        </section>


