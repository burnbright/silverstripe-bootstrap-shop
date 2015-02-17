<% require themedCSS(account, shop) %>
<% include AccountNavigation %>

<div class="typography">
    <div class="col-md-6">
        <h2 class="pagetitle">
	        <%t AccountPage_EditProfile.Title 'Edit Profile' %>
	    </h2>
    	$EditAccountForm
    </div>
    <div class="col-md-6">
        <h2 class="pagetitle">
	        <%t AccountPage_EditProfile.CHANGEPASSWORD 'Change Password' %>
	    </h2>
    	$ChangePasswordForm
    </div>
</div>