<main id="main " class="searchpage">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
            </ol>

            <h2>Property search</h2>

        </div>
    </section>
<!-- BEGIN CONTENT WRAPPER -->

    <div class="container pt-5">
        <div class="row">

                <!-- BEGIN ADVANCED SEARCH -->
                <h2 class="section-title">Search Property</h2>
                <% if $ActiveFilters %>
                <div class="chzn-container-multi">
                    <ul class="chzn-choices">
                        <% loop $ActiveFilters %>
                            <li class="search-choice"><span>$Label</span><a href="$RemoveLink" class="search-choice-close"></a></li>
                        <% end_loop %>
                    </ul>
                </div>
                <% end_if %>
                <div class="row">
                $PropertySearchForm
                <!-- END ADVANCED SEARCH -->
                </div>
                <div id="locationField">
                    <input id="autocomplete" placeholder="Enter a city" type="text" />
                  </div>
                  <%-- <div class="row">
                    <% include Custom/GoogleMap %>
                    </div> --%>
                <div class="row">
                <% include Custom/GoogleMap2 %>
                </div>

               <% include Custom/PropertySearchResults %>

            <!-- END SIDEBAR -->

        </div>
    </div>

<!-- END CONTENT WRAPPER -->
</main>
