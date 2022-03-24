<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="$BaseHref">Home</a></li>
            <li>$Breadcrumbs</li>
            </ol>
            <h2>$Title</h2>

        </div>
    </section>
<!-- BEGIN CONTENT WRAPPER -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">
            <div class="row">

                <!-- BEGIN MAIN CONTENT -->
                <div class="col-lg-8 entries">

                            <% if $SelectedRegion %>
                                    <h3>Region: $SelectedRegion.Title</h3>
                            <% else_if $SelectedCategory %>
                                    <h3>Category: $SelectedCategory.Title</h3>
                            <% else_if $StartDate %>
                            <h3>Showing $StartDate.Date to $EndDate.Date</h3>
                            <% end_if %>
                             <% loop $PaginatedArticles %>
                            <article class="entry">
                                <div class="entry-img">
                                    <img src="$CoverPhoto.URL" alt="$Title" class="img-fluid">
                                </div>
                                <h2 class="entry-title">
                                <a href="$Link">$Title</a>
                                </h2>

                                <div class="entry-meta">
                                    <ul>
                                    <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">$AuthorName</a></li>
                                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="$Date">$Date</time></a></li>
                                    <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                                </ul>
                                </div>
                                    <div class="entry-content">
                                        $Content.LimitSentences(4)
                                    </div>
                            </article>

                            <% end_loop %>
                            <!-- BEGIN PAGINATION -->
                            <% if $PaginatedArticles.MoreThanOnePage %>
                            <div class="pagination">
                                        <% if $PaginatedArticles.NotFirstPage %>
                                <ul id="previous col-xs-6">
                                    <li><a href="$PaginatedArticles.PrevLink"><i class="fa fa-chevron-left"></i></a></li>
                                </ul>
                                        <% end_if %>
                                <ul class="hidden-xs">
                                                <% loop $PaginatedArticles.PaginationSummary %>
                                                    <% if $Link %>
                                    <li <% if $CurrentBool %>class="active"<% end_if %>>
                                    <a href="$Link">$PageNum</a>
                                    </li>
                                                    <% else %>
                                    <li>...</li>
                                                    <% end_if %>
                                                <% end_loop %>
                                </ul>
                                        <% if $PaginatedArticles.NotLastPage %>
                                <ul id="next col-xs-6">
                                    <li><a href="$PaginatedArticles.NextLink"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                                        <% end_if %>
                            </div>
                            <% end_if %>
                            <!-- END PAGINATION -->

                </div>

                     <!-- END MAIN CONTENT -->

                    <!-- BEGIN SIDEBAR -->
                <div class="col-lg-4">
                    <% include BlogSlider %>
                </div>
                <!-- END SIDEBAR -->

            </div>
        </div>
    </section>
</main>
