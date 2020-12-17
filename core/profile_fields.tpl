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
                        <h1 class="m-0 text-dark">{$PROFILE_FIELDS}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$CONFIGURATION}</li>
                            <li class="breadcrumb-item active">{$PROFILE_FIELDS}</li>
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
                        <a class="btn btn-primary" href="{$NEW_FIELD_LINK}">{$NEW_FIELD}</a>

                        <hr />

                        {include file='includes/success.tpl'}

                        {include file='includes/errors.tpl'}

                        {if count($FIELDS)}
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>{$FIELD_NAME}</th>
                                            <th>{$TYPE}</th>
                                            <th>{$REQUIRED}</th>
                                            <th>{$EDITABLE}</th>
                                            <th>{$PUBLIC}</th>
                                            <th>{$FORUM_POSTS}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach from=$FIELDS item=field}
                                            <tr>
                                                <td><a href="{$field.edit_link}">{$field.name}</a></td>
                                                <td>{$field.type}</td>
                                                <td>{if $field.required eq 1}<i class="fa fa-check-circle text-success"></i>{else}<i class="fa fa-times-circle text-danger"></i>{/if}</td>
                                                <td>{if $field.editable eq 1}<i class="fa fa-check-circle text-success"></i>{else}<i class="fa fa-times-circle text-danger"></i>{/if}</td>
                                                <td>{if $field.public eq 1}<i class="fa fa-check-circle text-success"></i>{else}<i class="fa fa-times-circle text-danger"></i>{/if}</td>
                                                <td>{if $field.forum_posts eq 1}<i class="fa fa-check-circle text-success"></i>{else}<i class="fa fa-times-circle text-danger"></i>{/if}</td>
                                            </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {else}
                            {$NO_FIELDS}
                        {/if}

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