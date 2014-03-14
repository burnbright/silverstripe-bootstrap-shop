<% if Products.MoreThanOnePage %>
<div class="pagination pagination-centered">
	<ul>
		<% if Products.NotFirstPage %>
			<li><a class="prev" href="$Products.PrevLink" title="View the previous page"><% _t('ProductGroup.PREVIOUS','previous') %></a></li>
		<% else %>
			<li class="disabled"><a href="#"><% _t('ProductGroup.PREVIOUS','previous') %></a></li>
		<% end_if %>
    	<% with Products.PaginationSummary(4) %>
			<% if CurrentBool %>
				<li class="active"><a href="$Link" title="view page $PageNum">$PageNum</a></li>
			<% else %>
				<li><a href="$Link" title="view page $PageNum">$PageNum</a></li>
			<% end_if %>
		<% end_with %>
		<% if Products.NotLastPage %>
			<li><a class="next" href="$Products.NextLink" title="View the next page"><% _t('ProductGroup.NEXT','next') %></a></li>
		<% else %>
			<li class="disabled"><a href="#"><% _t('ProductGroup.NEXT','next') %></a></li>
		<% end_if %>
	</ul>
</div>
<% end_if %>