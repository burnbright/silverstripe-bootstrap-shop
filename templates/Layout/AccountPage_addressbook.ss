<% require themedCSS(account,shop) %>
<div class="container">
    <% include AccountNavigation Action=addressbook %>

    <div class="typography">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="pagetitle">
                    <%t AccountPage_AddressBook.Title 'Default Addresses' %>
                </h2>
                <% if $DefaultAddressForm %>
                    $DefaultAddressForm
                <% else %>
                    <p class="alert">
                        <%t AccountPage_AddressBook.NoAddress 'No addresses found.' %>
                    </p>
                <% end_if %>
            </div>
            <div class="col-sm-6">
                <h2><%t AccountPage_AddressBook.CreateNewTitle 'Create New Address' %></h2>
                $CreateAddressForm
            </div>
        </div>


    </div>
</div>