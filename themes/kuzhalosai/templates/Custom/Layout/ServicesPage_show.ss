<main id="main" class="top-pad">
    <section class="breadcrumbs">
        <div class="container">
            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
                <li>$Title</li>
            </ol>
            <h2>$Title</h2>
        </div>
    </section>
</main>
<!-- BEGIN CONTENT -->
<section id="blog" class="blog">
<div class="container" data-aos="fade-up">
        <div class="row">
            <div class="col-lg-8 entries">
              <% with $Service %>
                <h1> $Title</h1>
                  <div class="entry-img pb-3">
                    <img src="$Photo.URL" alt="" class="img-fluid">
                  </div>

                $Description
              <% end_with %>
            </div>
            <div class="col-lg-4">
                <div class="sidebar">
                    <h3 class="sidebar-title">Services</h3>
                    <div class="sidebar-item categories">
                        <ul class="categories subnav">
                        <% loop $Services %>
                            <li class="$LinkingMode"><a class="$LinkingMode" href="$Link">$Title</a></li>
                        <% end_loop %>
                        </ul>
                    </div>
                    <% include Custom/Bankdetails %>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END CONTENT -->
