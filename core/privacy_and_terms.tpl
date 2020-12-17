{include file='header.tpl'}
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    {include file='navbar.tpl'}
    {include file='sidebar.tpl'}

    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">{$PRIVACY_AND_TERMS}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$CONFIGURATION}</li>
                            <li class="breadcrumb-item active">{$PRIVACY_AND_TERMS}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                {include file='includes/update.tpl'}

                <div class="card">
                    <div class="card-body">

                        {include file='includes/success.tpl'}
                        
                        {include file='includes/errors.tpl'}

                        <form action="" method="post">
                            <div class="form-group">
                                <label for="InputPrivacy">{$PRIVACY_POLICY}</label>
                                <textarea style="width:100%" rows="10" name="privacy"
                                            id="InputPrivacy">{$PRIVACY_POLICY_VALUE}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="InputTerms">{$TERMS_AND_CONDITIONS}</label>
                                <textarea style="width:100%" rows="10" name="terms"
                                            id="InputTerms">{$TERMS_AND_CONDITIONS_VALUE}</textarea>
                            </div>

                            <div class="form-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                            </div>
                        </form>

                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

            </div>
        </section>

    </div>

    {include file='footer.tpl'}

</div>
<!-- ./wrapper -->

{include file='scripts.tpl'}

</body>
</html>