<table class="order_payments_table table">
	<thead>			
		<tr class="gap mainHeader">
			<th colspan="10" class="left"><% _t("PAYMENTS","Payment(s)") %></th>
		</tr>
		<tr>
			<th scope="row" class="twoColHeader"><% _t("DATE","Date") %></th>
			<th scope="row"  class="twoColHeader"><% _t("AMOUNT","Amount") %></th>
			<th scope="row"  class="twoColHeader"><% _t("PAYMENTSTATUS","Payment Status") %></th>
			<th scope="row" class="twoColHeader"><% _t("PAYMENTMETHOD","Method") %></th>
		</tr>
	</thead>
	<tbody>
		<% loop Payments %>	
			<tr>
				<td class="price">$Created.Nice</td>
				<td class="price">$Amount.Nice $Currency</td>
				<td class="price">$Status</td>
				<td class="price">$GatewayTitle</td>
			</tr>
			<% if ShowMessages %>
				<% loop Messages %>
					<tr>
						<td colspan="5">
							$ClassName $Message $User.Name
						</td>
					</tr>
				<% end_loop %>
			<% end_if %>
		<% end_loop %>
	</tbody>
</table>