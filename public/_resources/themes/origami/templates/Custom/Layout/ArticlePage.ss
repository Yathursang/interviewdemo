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
    <!-- End Breadcrumbs -->

    <!-- ======= Blog Single Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="row">

                <div class="col-lg-8 entries ">

                    <article class="entry entry-single mt-4">

                        <div class="entry-img">
                            <img src="$CoverPhoto.URL" alt="" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="#">$Title</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="bi bi-person"></i>$AuthorName</li>
                                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <time datetime="$Date">$Date</time></li>
                                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> 12 Comments</li>
                            </ul>
                        </div>

                        <div class="entry-content"> $Content</div>

                        <div class="entry-footer">
                            <i class="bi bi-folder"></i>
                            <ul class="cats">
                                <li><a href="#">Business</a></li>
                            </ul>

                            <i class="bi bi-tags"></i>
                            <ul class="tags">
                                <li><a href="#">Creative</a></li>
                                <li><a href="#">Tips</a></li>
                                <li><a href="#">Marketing</a></li>
                            </ul>
                        </div>

                    </article>
                    <!-- End blog entry -->

                    <div class="blog-author d-flex align-items-center">
                        <img src="$AuthorImage.URL" class="rounded-circle float-left" alt="">
                        <div>
                            <h4>$AuthorName</h4>
                            <div class="social-links">
                                <a href="$Fblink"><i class="bi bi-twitter"></i></a>
                                <a href="$Instagramlink"><i class="bi bi-facebook"></i></a>
                                <a href="$Linkedinlink"><i class="biu bi-instagram"></i></a>
                            </div>
                            <p>
                               $AuthorDiscripe
                            </p>
                        </div>
                    </div>
                    <!-- End blog author bio -->

                    <div class="blog-comments">

                        <h4 class="comments-count">8 Comments</h4>
                        <% loop $Comments %>
                        <div id="comment-1" class="comment">
                            <div class="d-flex">
                                <div class="comment-img"><img src="$ThemeDir/img/blog/comments-1.jpg" alt=""></div>
                                <div>
                                    <h5><a href="">$Name</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                                    <time datetime="2020-01-01">$Created.Format('j F, Y')</time>
                                    <p>$Comment </p>
                                </div>
                            </div>
                        </div>
                        <% end_loop %>
                        <!-- End comment #1 -->
                        <div class="reply-form">
                            <h4>Leave a Reply</h4>
                            <p>Your email address will not be published. Required fields are marked * </p>
                            $CommentForm

                        </div>

                    </div>
                    <!-- End blog comments -->

                </div>
                <!-- End blog entries list -->

                <div class="col-lg-4">
                    <% include BlogSlider %>
                </div>
                <!-- End blog sidebar -->

            </div>

        </div>
    </section>
    <!-- End Blog Single Section -->

</main>
<!-- End #main -->
