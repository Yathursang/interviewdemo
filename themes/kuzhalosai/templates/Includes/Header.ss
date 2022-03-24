<header id="header" class="header fixed-top bg-white" role="banner">
	<div class="container-fluid container-xl d-flex align-items-center justify-content-between">

			<a href="$BaseHref" class="logo d-flex align-items-center" rel="home">
                <img src="$ThemeDir/img/kuzhalosai.jpg" alt="Kuzhalosai trust tamilnadu">
                <span>$SiteConfig.Title</span>

                <%-- <h1>$SiteConfig.Title</h1>
				<% if $SiteConfig.Tagline %>
				<p>$SiteConfig.Tagline</p>
				<% end_if %> --%>
			</a>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
			<% include Navigation %>

	</div>
</header>
