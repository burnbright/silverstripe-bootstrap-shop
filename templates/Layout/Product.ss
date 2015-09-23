<div class="container">
	<% require themedCSS(product,shop) %>
	<div class="row">
		<div id="Sidebar" class="hidden-xs hidden-sm col-md-2 col-md-2">
			<% with Parent %>
				<% include ProductMenu %>
			<% end_with %>
		</div>
		<div id="Product" class="typography col-sm-8 col-md-7 col-lg-7">
			<div class="row">
				<div id="Breadcrumbs">
					$Breadcrumbs
				</div>
			</div>
			<div class="row">
				<div class="productDetails col-md-4 col-lg-5">
					<% if Image.ContentImage %>
						<img class="productImage" src="$Image.ContentImage.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
					<% else %>
						<img class="productImage" src="http://placehold.it/300x200" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
					<% end_if %>
				</div>
				<% if Content %>
					<div class="typography col-md-12 col-md-8 col-lg-7">
						<div class="page-header">
							<h1 class="pageTitle">$Title</h1>
						</div>
						<% if InternalItemID %><p><% _t("CODE","Product Code") %>: {$InternalItemID}</p><% end_if %>
						<% if Model %><p><% _t("MODEL","Model") %>: $Model.XML</p><% end_if %>
						<% if Size %><p><% _t("SIZE","Size") %>: $Size.XML</p><% end_if %>
						<% if Variations %>
							$VariationForm
						<% else %>
							<% if Price %>
								<% include PriceTag %>
							<% end_if %>
							<% if canPurchase %>
								<% if IsInCart %>
									<% loop Item %>
										<div class="quantityBox">
											<span><% _t("QUANTITYCART","Quantity in cart") %>:</span> $QuantityField
											<div class="productActions">
												<a class="btn btn-default" href="$removeallLink" title="<% sprintf(_t("REMOVE","Remove &quot;%s&quot; from your cart"),$Title) %>">
													<i class="icon-trash"></i>
													<% _t("REMOVELINK","Remove from cart") %>
												</a>
												<a class="btn btn-success" href="$Top.CheckoutLink" title="<% _t("GOTOCHECKOUT","Go to the checkout now") %>">
													<i class="icon-shopping-cart icon-white"></i>
													<% _t("GOTOCHECKOUTLINK","Go to the checkout") %>
												</a>
											</div>
										</div>
									<% end_loop %>
								<% else %>
									<a href="$addLink" class="btn btn-success btn-large" title="<% sprintf(_t("ADD","Add &quot;%s&quot; to your cart"),$Title) %>">
										<i class="icon-plus-sign icon-white"></i>
										<% _t("ADDLINK","Add to Cart") %>
									</a>
								<% end_if %>
							<% end_if %>
						<% end_if %>
						<div class="productContent">
							$Content
						</div>
					</div>
				<% end_if %>
			</div>
		</div>
		<div class="cart col-sm-4 col-md-3 col-lg-3">
			<div class="well">
				<% include SideCart %>
			</div>
		</div>
	</div>
</div>
