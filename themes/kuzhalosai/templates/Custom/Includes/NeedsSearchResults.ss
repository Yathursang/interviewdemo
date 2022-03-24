
<div id="listing-header" class="clearfix"></div>


<section id="values" class="values p-0">

    <div id="property-listing" class=" container list-style clearfix"> <!-- Inject "grid-style1" for grid view-->
    <% if $Results %>
            <%-- <h2>Showing $Results.PageLength results ($Results.getTotalItems total)</h2> --%>
            <h2>Showing  results ($Results.getTotalItems total)</h2>

        <div class="row">
        <% loop $Results %>
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                <div class="row py-4">
                    <div class="col-md-4">
                        <div class="box pricing">
                            <img src="$PrimaryPhoto.URL" class="img-fluid" alt="">
                        </div>
                    </div>
                    <div class="col-md-8 p-3 box pricing">
                        <h3><a href="$Link">$MainTitle</a></h3>

                        <div class="bg-light p-2 text-start">
                        <h6>$Description.LimitSentences(3)</h6>

                        </div>
                        <div class="p-2 text-start ">
                        <div><b>Location :</b> $Title</div>
                    <div><b>Type of service:</b> $Service.Title</div>
                <div><b> Contact : +91 78453 87565</b></div>
                    </div>
                        <div class="p-3">
                            <div class="price  navbar">
                                $PricePerNight.Nice<span> <a class="getstarted scrollto ms-0" href="/contact-us/">DONATE</a> </span>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


        <% end_loop %>
        </div>
    <% end_if %>
    </div>
</section>



<!-- BEGIN PAGINATION -->
<% if $Results.MoreThanOnePage %>
    <div class="pagination">
      <% if $Results.NotFirstPage %>
          <ul id="previous col-xs-6">
              <li><a href="$Results.PrevLink"><i class="fa fa-chevron-left"></i></a></li>
          </ul>
      <% end_if %>
        <ul class="hidden-xs">
          <% loop $Results.PaginationSummary %>
            <% if $Link %>
                <li <% if $CurrentBool %>class="active"<% end_if %>><a href="$Link">$PageNum</a></li>
            <% else %>
                <li>...</li>
            <% end_if %>
          <% end_loop %>
        </ul>
      <% if $Results.NotLastPage %>
          <ul id="next col-xs-6">
              <li><a href="$Results.NextLink"><i class="fa fa-chevron-right"></i></a></li>
          </ul>
      <% end_if %>
    </div>
<% end_if %>
<!-- END PAGINATION -->

