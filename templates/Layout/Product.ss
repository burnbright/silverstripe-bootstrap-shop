<% require themedCSS(product) %>
<div class="row">
	<div id="Sidebar" class="span2">
		<% control Parent %>
			<% include ProductMenu %>
		<% end_control %>
	</div>
	<div id="Product" class="typography span8">
		<div class="row">
			<div id="Breadcrumbs" class="span8">
				$Breadcrumbs
			</div>
		</div>
		<div class="row">
			<div class="productDetails span3">
				<% if Image.ContentImage %>
					<img class="productImage" src="$Image.ContentImage.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
				<% else %>
					<img class="productImage" src="http://placehold.it/300x200" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
				<% end_if %>
			</div>
			<% if Content %>
				<div class="typography span5">
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
								<% control Item %>
									<div class="quantityBox">
										<span><% _t("QUANTITYCART","Quantity in cart") %>:</span> $QuantityField
										<div class="productActions">
											<a class="btn" href="$removeallLink" title="<% sprintf(_t("REMOVE","Remove &quot;%s&quot; from your cart"),$Title) %>">
												<i class="icon-trash"></i>
												<% _t("REMOVELINK","Remove from cart") %>
											</a>
											<a class="btn btn-success" href="$checkoutLink" title="<% _t("GOTOCHECKOUT","Go to the checkout now") %>">
												<i class="icon-shopping-cart icon-white"></i>
												<% _t("GOTOCHECKOUTLINK","Go to the checkout") %>
											</a>
										</div>
									</div>
								<% end_control %>
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
	<div class="cart span2">
		<% include SideCart %>
	</div>
</div>