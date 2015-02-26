<div class="productgroupitem thumbnail">
	<% if Image %>
		<a href="$Link" title="<% sprintf(_t("READMORE","Click here to read more on &quot;%s&quot;"),$Title) %>">
			<img src="$Image.Thumbnail.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
		</a>
	<% else %>
		<a class="noimage" href="$Link" title="<% sprintf(_t("READMORE","Click here to read more on &quot;%s&quot;"),$Title) %>>">
			<img src="http://placehold.it/140x100" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
		</a>
	<% end_if %>
	<div class="caption">
		<h5 class="title"><a href="$Link" title="<% sprintf(_t("READMORE"),$Title) %>">$Title.LimitCharacters(45,..)</a></h5>
		<div class="price"><% if Price %><strong class="price">$Price.Nice</strong> <span class="currency">$Currency</span><% end_if %></div>
		<div class="actions">
			<a class="btn btn-mini btn-default" href="$Link" title="<% sprintf(_t("VIEW","View &quot;%s&quot;"),$Title) %>">
				<i class="icon-eye-open"></i>
				<% _t("VIEW","View") %>
			</a>
			<% if canPurchase %>
				<a class="btn btn-primary btn-mini" href="$addLink" title="<% sprintf(_t("ADD","Add &quot;%s&quot; to your cart"),$Title) %>">
					<i class="icon-shopping-cart icon-white"></i>
					<% _t("ADDLINK","Add") %>
				</a>
			<% end_if %>
		</div>
	</div>
</div>