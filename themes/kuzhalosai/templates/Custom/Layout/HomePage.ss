
<section id="hero" class="hero d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 d-flex flex-column justify-content-center">
                <h1 data-aos="fade-up" >$HeroTitle</h1>
                <h2 data-aos="fade-up" data-aos-delay="400" >$HeroSubTitle </h2>
                <div data-aos="fade-up" data-aos-delay="600" >
                    <div class="text-center text-lg-start">
                        <a href="/urgent-needs/" class=" btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                        <span>URGENT NEEDS</span>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 hero-img navbar " style="align-items: center;
              justify-content: center; margin:auto;">
                <% with $Photo %>
                    <img src="$Photo.URL" class="img-fluid p-5" alt="$HeroSubTitle">
                     <% end_with %>
              <img src="$ThemeDir/img/topRanked.png" class="img-fluid p-5" alt="$HeroSubTitle">
            <h5 data-aos="fade-up" data-aos-delay="400" class="text-center" > $DonateDiscription </h5>
                <a class="getstarted scrollto ms-0" href="/contact-us/">DONATE</a>

            </div>
        </div>
    </div>
</section>
<section>
    <% include Custom/GovermentSponsers  %>

</section>
<section id="about" class="about">
    <div class="container" data-aos="fade-up">
      <div class="row gx-0">
        <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <div class="content">
            <% loop $Ourservices %>
            <h3>$HeadLine</h3>
            <h2>$SubText</h2>
           $Content <% end_loop %>
            <div class="text-center text-lg-start">
              <a href="/our-services/" class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center">
                <span>Our Services</span>
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200">
          <img src="$ThemeDir/img/about.jpg" class="img-fluid" alt="">
        </div>
      </div>
    </div>
  </section><!-- End About Section -->
<!-- ======= Values Section ======= -->
<section id="values" class="values">

    <div class="container" data-aos="fade-up">

      <header class="section-header">
        <h2>Resent  Project</h2>
        <p>Be the Change you wish to see</p>
      </header>

      <div class="row">
        <% loop $ProjectDetails %>
            <% include Custom/SingleProject %>
        <% end_loop %>
      </div>
    </div>
  </section><!-- End Values Section -->
        <section id="team" class="team">
            <div class="container" data-aos="fade-up">
                <header class="section-header">
                    <h2>Team</h2>
                    <p>Our hard-working committee : 2022</p>
                    $Form
                </header>
                <div class="row gy-4">
                    <% loop $TeamDetails %>
                        <% include Custom/SingleTeam %>
                    <% end_loop %>


        </section>
<!-- ======= Counts Section ======= -->
<section id="counts" class="counts">
    <div class="container" data-aos="fade-up">

      <div class="row gy-4">

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-calendar2-event"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="7" data-purecounter-duration="1" class="purecounter"></span>
              <p>Years</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-emoji-heart-eyes" style="color: #ee6c20;"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="1200" data-purecounter-duration="1" class="purecounter"></span>
              <p>Volunteers</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box">
            <i class="bi bi-hourglass-split" style="color: #15be56;"></i>
            <div>
              <span data-purecounter-start="0" data-purecounter-end="18000" data-purecounter-duration="1" class="purecounter"></span>
              <p>Hours Of Support</p>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="count-box bg-dark">
            <i class="bi bi-people" style="color: #bb0852;"></i>
            <div class="text-center text-lg-start">
                <a href="/team/" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                    <span class="fs-5 text-white">Join New Member</span>

                </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Counts Section -->
        <section id="clients" class="clients">
            <% include Custom/Sponsers  %>
          </section><!-- End Clients Section -->



