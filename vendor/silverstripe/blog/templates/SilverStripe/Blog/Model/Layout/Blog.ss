<% require css('silverstripe/blog: client/dist/styles/main.css') %>
<main id="main" class="top-pad">
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="index.html">Home</a></li>
            <li>$Breadcrumbs</li>
            </ol>
            <h2>$Title</h2>

        </div>
    </section>

<section id="blog" class="blog">
<div class="container values  <% if $SideBarView %>unit size3of4<% end_if %>" data-aos="fade-up">
    <div class="row ">
        <div class="col-lg-8 entries box text-start p-3">
            <article>
                <h1>
                    <% if $ArchiveYear %>
                        <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                        <% if $ArchiveDay %>
                            $ArchiveDate.Nice
                        <% else_if $ArchiveMonth %>
                            $ArchiveDate.format('MMMM, y')
                        <% else %>
                            $ArchiveDate.format('y')
                        <% end_if %>
                    <% else_if $CurrentTag %>
                        <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
                    <% else_if $CurrentCategory %>
                        <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
                    <% else %>
                        $Title
                    <% end_if %>
                </h1>

                <div class="content">$Content</div>

                <% if $PaginatedList.Exists %>
                    <% loop $PaginatedList %>
                        <% include SilverStripe\\Blog\\PostSummary %>
                    <% end_loop %>
                <% else %>
                    <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
                <% end_if %>
            </article>
        </div>

                    <!-- BEGIN SIDEBAR -->
        <div class="col-lg-4">
            <div class=" values">
                <div class="box m-3">
                <h2 class="text-center p-2" style="background-color:#fca800;"> OUR BANK DETAILS</h2>
                <h5 class="text-start"><b> BANK NAME:</b> CANARA BANK</h5>
                <h5 class="text-start"><b>BRANCH NAME:</b> MOGAPPAIR</h5>
                <h5 class="text-start"><b>ACCOUNT NO:</b> 61122010028065</h5>
                <h5 class="text-start"><b>IFSC NO:</b> CNRB0016112</h5>
            </div>
        </div>
                    <!-- END SIDEBAR -->
</div>
	$Form
	$CommentsForm

	<% with $PaginatedList %>
		<% include SilverStripe\\Blog\\Pagination %>
	<% end_with %>
</div>
</section>
</div>
<% include SilverStripe\\Blog\\BlogSideBar %>
