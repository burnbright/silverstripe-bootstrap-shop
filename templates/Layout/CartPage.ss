<div class="page-header">
	<h1 class="pageTitle">$Title</h1>
</div>
<div class="typography">
	<% if Content %>
		$Content
	<% end_if %>
</div>
<% if Cart %>
	<% if CartForm %>
		$CartForm
	<% else %>
		<% with Cart %><% include Cart Editable=true %><% end_with %>
	<% end_if %>
<% else %>
	<div class="message warning alert alert-block alert-info">
		<h4 class="alert-heading">Your cart is empty</h4>
		<i class="icon icon-info-sign"></i> <% _t("NOITEMS","There are no items in your cart.") %>
	</div>
<% end_if %>
<div class="cartfooter row span12">
	<% if ContinueLink %>
		<a class="continuelink btn btn-primary" href="$ContinueLink">
			<i class="icon-arrow-left icon-white"></i>
			<% _t('CartPage.ss.CONTINUE','Continue Shopping') %>
		</a>
	<% end_if %>
	
	<% if Cart %>
		<div class="pull-right">
			<a href="$CheckoutLink" class="checkoutlink btn btn-success">
				<i class="icon-arrow-right icon-white"></i>
				<% _t('CartPage.ss.PROCEEDTOCHECKOUT','Proceed to Checkout') %>
			</a>
		</div>	
	<% end_if %>
</div>