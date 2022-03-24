<% require css('silverstripe/blog: client/dist/styles/main.css') %>
<main id="main" class="top-pade">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="index.html">Home</a></li>
            <li>$Breadcrumbs</li>
            </ol>
            <h2>$Title</h2>

        </div>
    </section>
    <section id="singleblog" class="singleblog">
        <div class="container <% if $SideBarView %>unit size3of4<% end_if %>">
            <div class="row ">
                <div class="col-lg-8 entries">
                    <article>
                        <h1>$Title</h1>

                        <div class="content">$Content</div>

                        <% include SilverStripe\\Blog\\EntryMeta %>
                    </article>

                    $Form
                    $CommentsForm
                </div>
                <div class="col-lg-4 entries">
                    <% if $FeaturedImage %>
                    <p class="post-image">$FeaturedImage</p>
                <% end_if %>
                </div>
            </div>
        </div>
    </section>
</main>
<% include SilverStripe\\Blog\\BlogSideBar %>
