<main id="main " class="searchpage top-pad">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
            </ol>

            <h2>Urgent Needs</h2>

        </div>
    </section>
<!-- BEGIN CONTENT WRAPPER -->

    <div class="container pt-5">
        <div class="row">

                <!-- BEGIN ADVANCED SEARCH -->
                <h2 class="section-title">Find Location</h2>
                <% if $ActiveFilters %>
                <div class="chzn-container-multi">
                    <ul class="chzn-choices">
                        <% loop $ActiveFilters %>
                            <li class="search-choice"><span>$Label</span><a href="$RemoveLink" class="search-choice-close"></a></li>
                        <% end_loop %>
                    </ul>
                </div>
                <% end_if %>
                <div class="col-md-8">
                    <% include Custom/GoogleMap2 %>

                    </div>
                <div class="col-md-4">
                $NeedsSearchForm
                <!-- END ADVANCED SEARCH -->
                <% include Custom/Bankdetails %>
            </div>
                </div>
                <% include Custom/NeedsSearchResults %>
            <!-- END SIDEBAR -->
        </div>
    </div>
<!-- END CONTENT WRAPPER -->
</main>
