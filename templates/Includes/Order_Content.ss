<table id="InformationTable" class="infotable ordercontent table table-bordered">
	<colgroup class="image"/>
	<colgroup class="product title"/>
	<colgroup class="unitprice" />
	<colgroup class="quantity" />
	<colgroup class="total"/>
	<thead>
		<tr>
			<th scope="col"></th>
			<th scope="col"><% _t("PRODUCT","Product") %></th>
			<th scope="col"><% _t("UNITPRICE","Unit Price") %></th>
			<th scope="col"><% _t("QUANTITY", "Quantity") %></th>
			<th scope="col"><% _t("TOTALPRICE","Total Price") %> ($Currency)</th>
		</tr>
	</thead>
	<tbody>
		<% loop Items %>
			<% include Order_ItemLine %>
		<% end_loop %>
		<tr class="gap summary" id="SubTotal">
			<td colspan="4" scope="row" class="threeColHeader subtotal"><% _t("SUBTOTAL","Sub-total") %></td>
			<td class="right">$SubTotal.Nice</td>
		</tr>
		<% loop Modifiers %>
			<% if ShowInTable %>
		<tr class="modifierRow $EvenOdd $FirstLast $Classes">
			<td colspan="4" scope="row">$TableTitle</td>
			<td class="right">$TableValue.Nice</td>
		</tr>
			<% end_if %>
		<% end_loop %>
		<tr class="gap summary total" id="Total">
			<td colspan="4" scope="row" class="threeColHeader total"><% _t("TOTAL","Total") %></td>
			<td class="right">$Total.Nice $Currency</td>
		</tr>
	</tbody>
</table>