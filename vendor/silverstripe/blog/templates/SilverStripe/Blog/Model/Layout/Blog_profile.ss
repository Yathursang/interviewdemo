<% require css('silverstripe/blog: client/dist/styles/main.css') %>
<main id="main" class="top-pad">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="$BaseHref">Home</a></li>
                <li>$Breadcrumbs</li>
            </ol>

            <h2>$CurrentProfile.FirstName $CurrentProfile.Surname</h2>

        </div>
    </section>

<div class="blog-entry container <% if $SideBarView %>unit size3of4<% end_if %>">
    <div class="row">
        <div class="col-md-9 boxx my-3">
            <% if $PaginatedList.Exists %>
                <h2 class="py-3"><%t SilverStripe\\Blog\\Model\\Blog.PostsByUser 'Posts by {firstname} {surname} for {title}' firstname=$CurrentProfile.FirstName surname=$CurrentProfile.Surname title=$Title %></h2>
                <% loop $PaginatedList %>
                    <% include SilverStripe\\Blog\\PostSummary %>
                <% end_loop %>
            <% end_if %>
            $Form
            $CommentsForm

            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
        </div>
        <div class="col-md-3 px-4">
            <% include SilverStripe\\Blog\\MemberDetails %>
        </div>
    </div>
</div>
</main>
<% include SilverStripe\\Blog\\BlogSideBar %>
