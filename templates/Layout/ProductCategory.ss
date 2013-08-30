<% require themedCSS(productcategory) %>
<div class="page-header">
	<h1 class="pageTitle">$Title</h1>
	$Breadcrumbs
</div>
<div class="row">
	<div id="Sidebar" class="span2">
		<% include ProductMenu %>
	</div>
	<div id="ProductGroup" class="typography span8">
		$Content
		<% if Products %>
			<div id="Products" class="category">
				
				<div class="filterbar row">
					<div class="span12">
						<% if SortLinks %>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">Sort<span class="caret"></span></a>
						    <ul class="dropdown-menu">
							    <% loop SortLinks %>
									<li><a href="$Link" class="sortlink $Current">$Name</a></li> 
								<% end_loop %>
						    </ul>
						</div>
						<% end_if %>
					</div>
				</div>
				
				<ul class="productList thumbnails">
					<% loop Products %>
						<% include ProductGroupItem %>
					<% end_loop %>
				</ul>
				<% include ProductGroupPagination %>
			</div>
		<% end_if %>
	</div>
	<div class="cart span2">
		<% include SideCart %>
	</div>
</div>