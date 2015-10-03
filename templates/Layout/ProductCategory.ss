<div class="container">
	<% require themedCSS(productcategory,shop) %>
	<h1 class="pageTitle">$Title</h1>
	<div class="row">
		<div id="Sidebar" class="col-sm-3 col-md-2 hidden-xs">
			<% include ProductMenu %>
		</div>
		<div id="ProductGroup" class="typography col-sm-6 col-md-8">
			$Breadcrumbs
			$Content
			<% if Products %>
				<div id="Products" class="category">
					<div class="filterbar row">
						<div class="col-sm-4">
							<% if Sorter %>
								<% include Sorter %>
							<% end_if %>
						</div>
					</div>
					<div class="products">
						<div class="row">
							<% loop Products %>
								<div class="col-xs-6 col-md-4 col-lg-3">
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