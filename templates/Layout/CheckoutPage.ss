<% require ThemedCSS(checkout,shop) %>
<div class="container">
<h1>$Title</h1>

<% if Cart %>

	<div class="row">
		<div class="col-lg-12">
	
			<div id="Checkout" class="accordion">
			
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" id="cont">
							<a href="cart" title="edit cart contents">Cart <i class="icon icon-pencil editicon"></i><i class="icon icon-shopping-cart pull-right"></i></a></h3>
					</div>
						
					<% with Cart %>
						<% include Cart %>
					<% end_with %>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<% if IsPastStep(contactdetails) %>
							<h3 class="panel-title"><a href="$Link(contactdetails)" title="edit contact details">Contact <i class="icon icon-pencil editicon"></i><i class="icon icon-user pull-right"></i></a></h3>
						<% else %>
							<h3 class="panel-title">Contact <i class="icon icon-user pull-right"></i></h3>
						<% end_if %>
					</div>
					<% if IsFutureStep(contactdetails) %>
					
					<% else %>
						<div class="panel-body">
							<% if IsCurrentStep(contactdetails) %>
								<p>Supply your contact information</p>
								$OrderForm
							<% end_if %>
							<% if IsPastStep(contactdetails) %>
								<% with Cart %>
									$Name ($Email)
								<% end_with %>
							<% end_if %>
						</div>
					<% end_if %>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<% if IsPastStep(shippingaddress) %>
							<h3 class="panel-title"><a title="edit address(es)" href="$Link(shippingaddress)">Address <i class="icon icon-pencil editicon"></i><i class="icon icon-map-marker pull-right"></i></a></h3>
						<% else %>
							<h3 class="panel-title">Address <i class="icon icon-map-marker pull-right"></i></h3>
						<% end_if %>
					</div>
					<% if IsFutureStep(shippingaddress) %>
					
					<% else %>
						<div class="panel-body">
							<% if IsCurrentStep(shippingaddress) %>
								<p>Please enter your shipping address details.</p>
								$OrderForm
							<% end_if %>
							<% if IsPastStep(shippingaddress) %>
								<div class="row">
									<div class="col-xs-6">
										<% with Cart %>
											<h4>Ship To:</h4>
											$ShippingAddress
										<% end_with %>
									</div>
									<div class="col-xs-6">
									<h4>Bill To:</h4>
										<% if IsCurrentStep(billingaddress) %>
											$OrderForm
										<% else %>
											<% with Cart %>
												$BillingAddress
											<% end_with %>
										<% end_if %>
									</div>
								</div>
							<% end_if %>
						</div>
					<% end_if %>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<% if IsPastStep(shippingmethod) %>
							<h3 class="panel-title"><a title="choose shipping method" href="$Link(shippingmethod)">Shipping <i class="icon icon-pencil editicon"></i><i class="icon icon-envelope pull-right"></i></a></h3>
						<% else %>
							<h3 class="panel-title">Shipping <i class="icon icon-envelope pull-right"></i></h3>
						<% end_if %>
					</div>
					<% if IsFutureStep(shippingmethod) %>
					
					<% else %>
						<div class="panel-body">
							<% if IsCurrentStep(shippingmethod) %>
								$OrderForm
							<% end_if %>
							<% if IsPastStep(shippingmethod) %>
								<% with Cart %>
									<p>$ShippingMethod.Title</p>
								<% end_with %>
							<% end_if %>
						</div>
					<% end_if %>
				</div>
			
				<div class="panel panel-default">
					<div class="panel-heading">
						<% if IsPastStep(paymentmethod) %>
							<h3 class="panel-title"><a title="choose payment method" href="$Link(paymentmethod)">Payment <i class="icon icon-pencil editicon"></i><i class="icon icon-lock pull-right"></i></a></h3>
						<% else %>
							<h3 class="panel-title">Payment <i class="icon icon-lock pull-right"></i></h3>
						<% end_if %>
					</div>
					<% if IsFutureStep(paymentmethod) %>
					
					<% else %>
						<div class="panel-body">
							<% if IsCurrentStep(paymentmethod) %>
								$OrderForm
							<% end_if %>
							<% if IsPastStep(paymentmethod) %>
								$SelectedPaymentMethod
							<% end_if %>
						</div>				
					<% end_if %>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Summary <i class="icon icon-ok pull-right"></i></h3>
					</div>
					<% if IsFutureStep(summary) %>
					
					<% else %>
						<div class="panel-body">
							<% if IsCurrentStep(summary) %>
								<% with Cart %>
									<table class="table">
										<tfoot>
											<% loop Modifiers %>
												<% if ShowInTable %>
													<tr class="modifierRow $EvenOdd $FirstLast $Classes">
														<td colspan="3">$TableTitle</td>
														<td>$TableValue.Nice</td>
													</tr>
												<% end_if %>
											<% end_loop %>
											<tr>
												<th colspan="3">Grand Total</th>
												<td>$Total.Nice $Currency</td>
											</tr>
										</tfoot>
									</table>
								<% end_with %>
								$OrderForm
							<% end_if %>
						</div>
					<% end_if %>
				</div>
				
			</div>
		
		</div>
	</div>

<% else %>

	<div class="message warning alert alert-block alert-info">
		<h4 class="alert-heading">Your cart is empty</h4>
		<i class="icon icon-info-sign"></i> <% _t("NOITEMS","There are no items in your cart.") %>
	</div>
	<% if ContinueLink %>
		<a class="continuelink btn btn-primary" href="$ContinueLink">
			<i class="icon-arrow-left icon-white"></i>
			<% _t('CartPage.ss.CONTINUE','Continue Shopping') %>
		</a>
	<% end_if %>
	
<% end_if %>
</div>