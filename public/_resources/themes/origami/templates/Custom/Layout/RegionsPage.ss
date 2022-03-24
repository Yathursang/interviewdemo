
<!-- BEGIN CONTENT WRAPPER -->
<main id="main">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
            </ol>

            <h2>Blog</h2>

        </div>
    </section>

        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">

                <div class="row">

                    <div class="col-lg-8 entries">
                        <% loop $Regions %>
                         <article class="entry">

                        <div class="entry-img">
                            <img src="$Photo.URL" alt="" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="$Link">$Title</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a></li>
                                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">
                            <p>
                                $Description.FirstParagraph
                            </p>
                            <div class="read-more">
                                <a href="$Link">Read More</a>
                            </div>
                        </div>

                    </article>
                  <% end_loop %>

                    <!-- BEGIN PAGINATION -->
                    <div class="blog-pagination">
                        <ul class="justify-content-center">
                            <li><a href="#">1</a></li>
                            <li class="active"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                        </ul>
                    </div>
                </div>
                    <!-- END PAGINATION -->
                        <!-- BEGIN SIDEBAR -->
                    <div class="col-lg-4">

                        <% include BlogSlider %>
                        <!-- End sidebar -->

                    </div>
                     <!-- END SIDEBAR -->
                </div>
            </div>
        </section>
</main>
<!-- END CONTENT WRAPPER -->
