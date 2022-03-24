
<!-- BEGIN CONTENT WRAPPER -->
<main id="main" class="top-pad">
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

                        <% loop $Services %>
                         <article class="entry">
                            <h2 class="entry-title pb-4">
                            <a href="$Link">$Title</a>
                        </h2>
                        <div class="entry-img">
                            <img src="$Photo.URL" alt="" class="img-fluid">
                        </div>


                        <div class="entry-content">

                                $Description.FirstParagraph

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
                        <% include Custom/Bankdetails %>

                    </div>
                     <!-- END SIDEBAR -->
                </div>
            </div>
        </section>
</main>
<!-- END CONTENT WRAPPER -->
