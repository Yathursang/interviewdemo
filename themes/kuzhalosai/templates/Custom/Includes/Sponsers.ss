<div class="container" data-aos="fade-up">

    <header class="section-header">
      <h2 class="fs-4">Our Partners</h2>
      <p>Our sponsors are our strength</p>
    </header>

    <div class="clients-slider swiper">
      <div class="swiper-wrapper align-items-center">
          <% loop  $SponsoresDetails %><h1></h1>
              <div class="swiper-slide"><a href="$SponserWebsiteLink" target="_blank" title="$SponserName"><img src=$SponserLogo.URL class="img-fluid" alt="$SponserName"></a></div>
          <% end_loop %>

      </div>
      <div class="swiper-pagination"></div>
    </div>
  </div>
