<div class="container" data-aos="fade-up">
    <header class="section-header">
      <h2 class="fs-4">Government Associates</h2>
    </header>
    <div class="goverment-slider swiper">
      <div class="swiper-wrapper align-items-center pb-3">
         <% loop  $SponsoresDetails %><h1></h1>
        <% if $TypeofSponser == 'goverment' %>
        <div class="swiper-slide"><a href="$SponserWebsiteLink" target="_blank" title="$SponserName"><img src=$SponserLogo.URL class="img-fluid" alt="$SponserName"></a></div>
         <% end_if %>
        <% end_loop %>
      </div>
      <div class="swiper-pagination pt-4"></div>
  </div>
</div>
