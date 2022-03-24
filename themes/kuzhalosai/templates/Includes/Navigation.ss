<nav id="navbar" class="navbar">

	<ul>
		<% loop $Menu(1) %>
			<li class="$LinkingMode nav-link scrollto  <% if $Children %>dropdown <% end_if %>"><a href="$Link" title="$Title.XML">$MenuTitle.XML <% if $Children %><i class="bi bi-chevron-right"></i> <% end_if %></a>


                    <% if $Children %>
                        <ul>
                            <% loop $Children %>
                                <li class="dropdown <% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>"><a href="$Link">$MenuTitle <% if $Children %><i class="bi bi-chevron-right"></i> <% end_if %></a></li>
                            <% end_loop %>
                        </ul>
                    <% end_if %>


            </li>
		<% end_loop %>
    <li><a class="getstarted scrollto" href="/contact-us/">Donate</a></li>
	</ul>

<i class="bi bi-list mobile-nav-toggle"></i>
</nav>
