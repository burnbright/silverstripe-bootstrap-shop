<div class="container">
	<% require themedCSS(productcategory,shop) %>
	<div class="page-header">
		<h1 class="pageTitle">$Title</h1>
		$Breadcrumbs
	</div>
	<div class="row">
		<div id="Sidebar" class="col-sm-3 col-md-2 hidden-xs">
			<% include ProductMenu %>
		</div>
		<div id="ProductGroup" class="typography col-sm-6 col-md-8">
			$Content
			<% if Products %>
				<div id="Products" class="category">
					
					<div class="filterbar row">
						<div class="col-sm-12">
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
					<div class="products">
						<div class="row">
							<% loop Products %>
								<div class="col-xs-6 col-md-3 col-lg-3">
									<% include ProductGroupItem %>
								</div>
							<% end_loop %>
						</div>
					</div>
					<% with Products %>
						<% include Pagination %>
					<% end_with %>
				</div>
			<% end_if %>
		</div>
		<div class="cart col-sm-3 col-md-2">
			<% include SideCart %>
		</div>
	</div>
</div>