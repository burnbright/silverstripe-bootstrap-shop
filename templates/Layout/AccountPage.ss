<% require themedCSS(account,shop) %>
<div class="container">
	<% include AccountNavigation %>
    $Content
    <h2 class="pagetitle"><%t AccountPage.Title 'Past Orders' %></h2>
    <% with $Member %>
        <% if $PastOrders %>
            <% include OrderHistory %>
        <% else %>
            <p class="message warning"><%t AccountPage.NoPastOrders 'No past orders found.' %></p>
        <% end_if %>
    <% end_with %>
</div>
