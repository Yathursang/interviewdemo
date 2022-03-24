<div class="post-summary">
	<p class="post-image">
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
            <img src="$FeaturedImage.URL" alt="$Title" class="img-fluid">
		</a>
	</p>
    <h2>
		<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>
	<% if $Summary %>
		$Summary
	<% else %>
		<p>$Excerpt</p>
	<% end_if %>
	    <p>
            <a href="$Link" type="submit" name="action_handleComment" value="Post Comment" class="action btn btn-primary" id="Form_CommentForm_action_handleComment">
            <span>Read More</span>
        </a>
		</p>
	<% include SilverStripe\\Blog\\EntryMeta %>
</div>
